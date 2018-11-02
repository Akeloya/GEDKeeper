﻿using Eto.Drawing;
using Eto.Forms;
using GKUI.Components;

namespace GKUI.Forms
{
    partial class PortraitSelectDlg
    {
        private Button btnAccept;
        private Button btnCancel;
        private GKUI.Components.ImageView imageView1;

        private void InitializeComponent()
        {
            SuspendLayout();

            btnAccept = new Button();
            btnAccept.ImagePosition = ButtonImagePosition.Left;
            btnAccept.Size = new Size(130, 26);
            btnAccept.Text = "btnAccept";

            btnCancel = new Button();
            btnCancel.ImagePosition = ButtonImagePosition.Left;
            btnCancel.Size = new Size(130, 26);
            btnCancel.Text = "btnCancel";

            imageView1 = new GKUI.Components.ImageView();
            imageView1.SelectionMode = ImageBoxSelectionMode.Rectangle;
            imageView1.ShowToolbar = true;
            imageView1.Size = new Size(800, 600);

            Content = new DefTableLayout {
                Rows = {
                    new TableRow {
                        ScaleHeight = true,
                        Cells = { imageView1 }
                    },
                    UIHelper.MakeDialogFooter(null, btnAccept, btnCancel)
                }
            };

            DefaultButton = btnAccept;
            AbortButton = btnCancel;
            Title = "PortraitSelectDlg";

            SetPredefProperties(870, 680);
            ResumeLayout();
        }
    }
}
