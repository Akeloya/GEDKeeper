﻿/*
 *  "GEDKeeper", the personal genealogical database editor.
 *  Copyright (C) 2009-2017 by Sergey V. Zhdanovskih.
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

#if !__MonoCS__

using GKCommon.GEDCOM;
using GKCore.Interfaces;
using GKTests;
using GKTests.Stubs;
using GKUI.Forms;
using NUnit.Extensions.Forms;
using NUnit.Framework;

namespace GKUI.Forms
{
    /// <summary>
    /// 
    /// </summary>
    [TestFixture]
    public class PersonalNameEditDlgTests : CustomWindowTest
    {
        private GEDCOMIndividualRecord fPerson;
        private GEDCOMPersonalName fPersonalName;
        private IBaseWindow fBase;
        private PersonalNameEditDlg fDialog;

        public override void Setup()
        {
            base.Setup();

            fBase = new BaseWindowStub();
            fPerson = new GEDCOMIndividualRecord(fBase.Context.Tree, fBase.Context.Tree, "", "");
            fPersonalName = new GEDCOMPersonalName(fBase.Context.Tree, fPerson, "", "");

            fDialog = new PersonalNameEditDlg(fBase);
            fDialog.Model = fPersonalName;
            fDialog.Show();
        }

        public override void TearDown()
        {
            fDialog.Dispose();
            fPersonalName.Dispose();
        }

        [Test]
        public void Test_Cancel()
        {
            ClickButton("btnCancel", fDialog);
        }

        [Test]
        public void Test_EnterDataAndApply()
        {
            Assert.AreEqual(fPersonalName, fDialog.Model);

            var txtSurname = new TextBoxTester("txtSurname");
            txtSurname.Enter("sample text");
            Assert.AreEqual("sample text", txtSurname.Text);

            ClickButton("btnAccept", fDialog);

            Assert.AreEqual("sample text", fPersonalName.Pieces.Surname);
        }
    }
}

#endif
