-- ��������: ���� ������ ������� � ����� ����������� ����� � ������������ �������!!!

-- ������ � ������� ���������� ������� � ������
x = gt_get_records_count();
gk_print("������� � �����: "..x);

gk_progress_init(x, "������� ���� ������");

-- ��������� ��� ������
for i = 0, x - 1 do
  R = gt_get_record(i); -- �������� ������
  rt = gt_get_record_type(R); -- ������ � ���

  if (rt == rtIndividual) then
    at_cnt = gt_get_person_events_count(R);

    if (at_cnt > 0) then
      gk_print("������ "..i..", ��� - �������, ���������: "..at_cnt);

      for at = at_cnt - 1, 0, -1 do
        attr = gt_get_person_event(R, at);
        val = gt_get_event_value(attr);
        if (gk_strpos("������", val) > 0) then 
          gk_print("  > ������ ���� ������� ����� - "..val);
          gt_delete_person_event(R, at);
        end
      end
    end
  end

  gk_progress_step();
end

gk_progress_done();