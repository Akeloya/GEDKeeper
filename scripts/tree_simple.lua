-- ������ � ������� ���������� ������� � ������

x = gt_get_records_count();
gk_print("������� � �����: "..x);

-- ��������� ��� ������
for i = 0, x - 1 do
  R = gt_get_record(i); -- �������� ������
  rt = gt_get_record_type(R); -- ������ � ���
  rt_name = gt_get_record_type_name(rt); -- �������� ��� ����

  gk_print("������ "..i..", ��� "..rt_name); -- ����� �� �����
end
