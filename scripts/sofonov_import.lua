
-- ������� ������� ����
csv_name = gk_select_file();
if (csv_name == "") then
  gk_print("���� �� ������");
  return
end

-- �������� ����� ������
csv_load(csv_name, true);
cols = csv_get_cols();
rows = csv_get_rows();

gk_print("����: "..csv_name..", ��������: "..cols..", �����: "..rows);

prev_vid = "";
prev_person = 0;
marr_date = "";
birth_family = null;
key_person = null;

for r = 0, rows-1 do
  -- ��������� ����������� �����
  page = csv_get_cell(0, r);
  vid = csv_get_cell(1, r);
  link = csv_get_cell(2, r);
  date = csv_get_cell(3, r);
  name = csv_get_cell(4, r);
  patr_name = csv_get_cell(5, r);
  family = csv_get_cell(6, r);
  town = csv_get_cell(7, r);
  source = csv_get_cell(8, r);
  comment = csv_get_cell(10, r);

  -- ����� ��� �������
  line = name.." "..patr_name.." "..family..", "..town..", "..source.." + "..page;
  gk_print(line);

  -- �.�. ����������� ������� �������� ������� ����, ������� ��� ������� �������� - ���������� �������
  -- �� �������� ������, ������� ������ ������� �� ������ - ��� ����������� ����
  sex = gt_define_sex(name, patr_name); 

  -- ����������� ��������, ������ �������� - ���������� ���������� ������������, 
  -- ���� � ��������� ��� ���������
  patronymic = gt_define_patronymic(patr_name, sex, true);

  -- ������� �������
  p = gt_create_person(name, patronymic, family, sex);

  if (vid == "����") then
    marr_date = date;
    birth_family = null;
  else
    if (vid == "��������") then
      evt = gt_create_event(p, "BIRT"); 
      gt_set_event_date(evt, date);

      marr_date = "";

      birth_family = gt_create_family();
      gt_bind_family_child(birth_family, p);
    end

    if (vid == "������") then
      evt = gt_create_event(p, "DEAT"); 
      gt_set_event_date(evt, date);

      marr_date = "";
      birth_family = null;
    end    
  end

  -- ������� ���� ����� ����������
  evt = gt_create_event(p, "RESI"); 
  gt_set_event_place(evt, town);

  -- �����, �� ������ �� ��� ����� ��������
  src = gt_find_source(source);
  if (src == 0) then
    -- ������� �������������
    src = gt_create_source(source);
  end

  -- ������������ �������� � ������� (3 - ������� �������� ���������)
  gt_bind_record_source(p, src, page, 3);

  -- ���������, ����� �� �����������, ���� �� - ������������ � �������
  if not(comment == "") then
    n = gt_create_note();
    gt_bind_record_note(p, n);
    gt_add_note_text(n, comment);
  end

  -- ��������� �������� ������
  if (link == "����") then
    key_person = p;
  end

  if (link == "����") then
    f = gt_create_family();
    gt_bind_family_spouse(f, prev_person); -- ������������, ��� ���������� ������� - ���
    gt_bind_family_spouse(f, p); -- ����������� � ����� ����

    if not(marr_date == "") then
      evt = gt_create_event(f, "MARR"); 
      gt_set_event_date(evt, date);
    end
  end

  if (link == "����") and not(birth_family == null) then
    gt_bind_family_spouse(birth_family, p); -- ������������ � ����� ������� ����
  end

  if (link == "����") and not(birth_family == null) then
    gt_bind_family_spouse(birth_family, p); -- ������������ � ����� ������� ����
  end

  if (link == "�������") then
    gt_add_person_association(key_person, link, p);
  end

  -- ���������� ��������� ������� ������
  if not(vid == "") then
    prev_vid = vid;
  end
  prev_person = p;
end

-- ������� ���� ������
csv_close();

-- �������� ������ ���� ������
gk_update_view();