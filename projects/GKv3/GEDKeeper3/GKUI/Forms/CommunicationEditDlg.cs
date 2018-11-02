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

using GKCommon.GEDCOM;
using GKCore;
using GKCore.Controllers;
using GKCore.Interfaces;
using GKCore.Lists;
using GKCore.MVP.Controls;
using GKCore.MVP.Views;
using GKUI.Components;

namespace GKUI.Forms
{
    /// <summary>
    /// 
    /// </summary>
    public sealed partial class CommunicationEditDlg : EditorDialog<GEDCOMCommunicationRecord, ICommunicationEditDlg, CommunicationEditDlgController>, ICommunicationEditDlg
    {
        private readonly GKSheetList fNotesList;
        private readonly GKSheetList fMediaList;

        #region View Interface

        ISheetList ICommunicationEditDlg.NotesList
        {
            get { return fNotesList; }
        }

        ISheetList ICommunicationEditDlg.MediaList
        {
            get { return fMediaList; }
        }

        ITextBoxHandler ICommunicationEditDlg.Corresponder
        {
            get { return fControlsManager.GetControlHandler<ITextBoxHandler>(txtCorresponder); }
        }

        IComboBoxHandler ICommunicationEditDlg.CorrType
        {
            get { return fControlsManager.GetControlHandler<IComboBoxHandler>(cmbCorrType); }
        }

        ITextBoxHandler ICommunicationEditDlg.Date
        {
            get { return fControlsManager.GetControlHandler<ITextBoxHandler>(txtDate); }
        }

        IComboBoxHandler ICommunicationEditDlg.Dir
        {
            get { return fControlsManager.GetControlHandler<IComboBoxHandler>(txtDir); }
        }

        ITextBoxHandler ICommunicationEditDlg.Name
        {
            get { return fControlsManager.GetControlHandler<ITextBoxHandler>(txtName); }
        }

        #endregion

        private void btnPersonAdd_Click(object sender, EventArgs e)
        {
            fController.SetPerson();
        }

        public CommunicationEditDlg(IBaseWindow baseWin)
        {
            InitializeComponent();

            btnAccept.Click += AcceptHandler;
            btnCancel.Click += CancelHandler;

            btnAccept.Image = UIHelper.LoadResourceImage("Resources.btn_accept.gif");
            btnCancel.Image = UIHelper.LoadResourceImage("Resources.btn_cancel.gif");
            btnPersonAdd.Image = UIHelper.LoadResourceImage("Resources.btn_rec_new.gif");

            fNotesList = new GKSheetList(pageNotes);
            fMediaList = new GKSheetList(pageMultimedia);

            // SetLang()
            btnAccept.Text = LangMan.LS(LSID.LSID_DlgAccept);
            btnCancel.Text = LangMan.LS(LSID.LSID_DlgCancel);
            Title = LangMan.LS(LSID.LSID_WinCommunicationEdit);
            pageNotes.Text = LangMan.LS(LSID.LSID_RPNotes);
            pageMultimedia.Text = LangMan.LS(LSID.LSID_RPMultimedia);
            lblTheme.Text = LangMan.LS(LSID.LSID_Theme);
            lblCorresponder.Text = LangMan.LS(LSID.LSID_Corresponder);
            lblType.Text = LangMan.LS(LSID.LSID_Type);
            lblDate.Text = LangMan.LS(LSID.LSID_Date);

            SetToolTip(btnPersonAdd, LangMan.LS(LSID.LSID_PersonAttachTip));

            fController = new CommunicationEditDlgController(this);
            fController.Init(baseWin);

            fNotesList.ListModel = new NoteLinksListModel(baseWin, fController.LocalUndoman);
            fMediaList.ListModel = new MediaLinksListModel(baseWin, fController.LocalUndoman);
        }
    }
}
