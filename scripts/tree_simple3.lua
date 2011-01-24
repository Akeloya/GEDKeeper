-- ������ � ������� ���������� ������� � ������

x = gt_get_records_count();
gk_print("������� � �����: "..x);

-- ��������� ��� ������
for i = 0, x - 1 do
  R = gt_get_record(i); -- �������� ������
  rt = gt_get_record_type(R); -- ������ � ���
  if (rt == rtIndividual) then
    gk_print("������ "..i..", ��� - �������, ���: "..gt_get_person_name(R)); -- ����� �� �����

    at_cnt = gt_get_person_events_count(R);

    if (at_cnt > 0) then
      gk_print("  ������ "..at_cnt);

      for at = 0, at_cnt - 1 do
        evt = gt_get_person_event(R, at);
        -- val = gt_get_event_value(attr);
        gk_print("    > ���� "..at..", ����� "..gt_get_event_place(evt));
      end
    end
  end
end
