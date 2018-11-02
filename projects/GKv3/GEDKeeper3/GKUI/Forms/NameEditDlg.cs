﻿/*
 *  "GEDKeeper", the personal genealogical database editor.
 *  Copyright (C) 2009-2018 by Sergey V. Zhdanovskih.
 *
 *  This file is part of "GEDKeeper".
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see <http://www.gnu.org/licenses/>.
 */

using System;
using Eto.Forms;

using GKCore;
using GKCore.Controllers;
using GKCore.MVP.Controls;
using GKCore.MVP.Views;
using GKCore.Types;
using GKUI.Components;

namespace GKUI.Forms
{
    /// <summary>
    /// 
    /// </summary>
    public sealed partial class NameEditDlg : EditorDialog<NameEntry, INameEditDlg, NameEditDlgController>, INameEditDlg
    {
        #region View Interface

        ITextBoxHandler INameEditDlg.Name
        {
            get { return fControlsManager.GetControlHandler<ITextBoxHandler>(txtName); }
        }

        ITextBoxHandler INameEditDlg.FPatr
        {
            get { return fControlsManager.GetControlHandler<ITextBoxHandler>(txtFPatr); }
        }

        ITextBoxHandler INameEditDlg.MPatr
        {
            get { return fControlsManager.GetControlHandler<ITextBoxHandler>(txtMPatr); }
        }

        IComboBoxHandler INameEditDlg.SexCombo
        {
            get { return fControlsManager.GetControlHandler<IComboBoxHandler>(cmbSex); }
        }

        #endregion

        private void edName_KeyDown(object sender, KeyEventArgs e)
        {
            if (e.KeyChar == '/') {
                e.Handled = true;
            }
        }

        public NameEditDlg()
        {
            InitializeComponent();

            btnAccept.Click += AcceptHandler;
            btnCancel.Click += CancelHandler;

            btnAccept.Image = UIHelper.LoadResourceImage("Resources.btn_accept.gif");
            btnCancel.Image = UIHelper.LoadResourceImage("Resources.btn_cancel.gif");

            // SetLang()
            btnAccept.Text = LangMan.LS(LSID.LSID_DlgAccept);
            btnCancel.Text = LangMan.LS(LSID.LSID_DlgCancel);
            Title = LangMan.LS(LSID.LSID_Name);
            lblName.Text = LangMan.LS(LSID.LSID_Name);
            lblSex.Text = LangMan.LS(LSID.LSID_Sex);
            grpPatronymics.Text = LangMan.LS(LSID.LSID_Patronymic);
            lblFemale.Text = LangMan.LS(LSID.LSID_PatFemale);
            lblMale.Text = LangMan.LS(LSID.LSID_PatMale);

            fController = new NameEditDlgController(this);
        }
    }
}
