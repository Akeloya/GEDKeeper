-- ������ � ������� ���������� ������� � ������

x = gt_get_records_count();
gk_print("������� � �����: "..x);

-- ��������� ��� ������
for i = 0, x - 1 do
  R = gt_get_record(i); -- �������� ������
  rt = gt_get_record_type(R); -- ������ � ���
  if (rt == rtIndividual) then
    gk_print("������ "..i..", ��� - �������, ���: "..gt_get_person_name(R)); -- ����� �� �����
  end
end
