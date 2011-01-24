-- ��������: ���� ������ ������� � ����� ��� ������� � ������������ �������!!!

-- ������ � ������� ���������� ������� � ������
x = gt_get_records_count();
gk_print("������� � �����: "..x);

gk_progress_init(x, "������� ���� ������");

-- ��������� ��� ������
for i = 0, x - 1 do
  R = gt_get_record(i); -- �������� ������
  rt = gt_get_record_type(R); -- ������ � ���

  if (rt == rtIndividual) then
    gk_print("������ "..i..", ��� - ������������ ������"); -- ����� �� �����

    cnt = gt_get_person_events_count(R);
    gk_print("���������� �������: "..cnt);
    for ev = 1, cnt do
      gt_delete_person_event(R, 0);
    end
  end

  gk_progress_step();
end

gk_progress_done();

gk_update_view();
