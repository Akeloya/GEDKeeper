
i1 = gt_create_person("����", "��������", "������", "M");
i2 = gt_create_person("�����", "���������", "�������", "F");

f = gt_create_family();

gt_bind_family_spouse(f, i1);
gt_bind_family_spouse(f, i2);

n = gt_create_note();
gt_bind_record_note(i1, n);
gt_add_note_text(n, "������ �������");
gt_add_note_text(n, "������ 2");
gt_add_note_text(n, "������ 3");

gk_update_view();