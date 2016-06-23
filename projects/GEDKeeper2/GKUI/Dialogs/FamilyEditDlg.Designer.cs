﻿using System;

namespace GKUI.Dialogs
{
	partial class FamilyEditDlg
	{
		private System.Windows.Forms.TabControl tabsFamilyData;
		private System.Windows.Forms.TabPage pageEvents;
		private System.Windows.Forms.TabPage pageNotes;
		private System.Windows.Forms.TabPage pageMultimedia;
		private System.Windows.Forms.TabPage pageSources;
		private System.Windows.Forms.TabPage pageChilds;
		private System.Windows.Forms.Button btnAccept;
		private System.Windows.Forms.Button btnCancel;
		private System.Windows.Forms.GroupBox GroupBox1;
		private System.Windows.Forms.Label lblHusband;
		private System.Windows.Forms.TextBox txtHusband;
		private System.Windows.Forms.Button btnHusbandAdd;
		private System.Windows.Forms.Button btnHusbandDelete;
		private System.Windows.Forms.Button btnHusbandSel;
		private System.Windows.Forms.Button btnWifeSel;
		private System.Windows.Forms.Button btnWifeDelete;
		private System.Windows.Forms.Button btnWifeAdd;
		private System.Windows.Forms.TextBox txtWife;
		private System.Windows.Forms.Label lblWife;
		private System.Windows.Forms.Label lblStatus;
		private System.Windows.Forms.ComboBox cmbMarriageStatus;
		private System.Windows.Forms.Label lblRestriction;
		private System.Windows.Forms.ComboBox cmbRestriction;
		private System.ComponentModel.IContainer components;
		private System.Windows.Forms.ToolTip toolTip1;

		private void InitializeComponent()
		{
		    this.components = new System.ComponentModel.Container();
		    this.btnAccept = new System.Windows.Forms.Button();
		    this.btnCancel = new System.Windows.Forms.Button();
		    this.GroupBox1 = new System.Windows.Forms.GroupBox();
		    this.lblHusband = new System.Windows.Forms.Label();
		    this.btnHusbandAdd = new System.Windows.Forms.Button();
		    this.btnHusbandDelete = new System.Windows.Forms.Button();
		    this.btnHusbandSel = new System.Windows.Forms.Button();
		    this.btnWifeSel = new System.Windows.Forms.Button();
		    this.btnWifeDelete = new System.Windows.Forms.Button();
		    this.btnWifeAdd = new System.Windows.Forms.Button();
		    this.lblWife = new System.Windows.Forms.Label();
		    this.lblStatus = new System.Windows.Forms.Label();
		    this.txtHusband = new System.Windows.Forms.TextBox();
		    this.txtWife = new System.Windows.Forms.TextBox();
		    this.cmbMarriageStatus = new System.Windows.Forms.ComboBox();
		    this.lblRestriction = new System.Windows.Forms.Label();
		    this.cmbRestriction = new System.Windows.Forms.ComboBox();
		    this.tabsFamilyData = new System.Windows.Forms.TabControl();
		    this.pageChilds = new System.Windows.Forms.TabPage();
		    this.pageEvents = new System.Windows.Forms.TabPage();
		    this.pageNotes = new System.Windows.Forms.TabPage();
		    this.pageMultimedia = new System.Windows.Forms.TabPage();
		    this.pageSources = new System.Windows.Forms.TabPage();
		    this.toolTip1 = new System.Windows.Forms.ToolTip(this.components);
		    this.GroupBox1.SuspendLayout();
		    this.tabsFamilyData.SuspendLayout();
		    this.SuspendLayout();
		    // 
		    // btnAccept
		    // 
		    this.btnAccept.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
		    this.btnAccept.Location = new System.Drawing.Point(370, 393);
		    this.btnAccept.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.btnAccept.Name = "btnAccept";
		    this.btnAccept.Size = new System.Drawing.Size(91, 25);
		    this.btnAccept.TabIndex = 4;
		    this.btnAccept.Text = "btnAccept";
		    this.btnAccept.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
		    this.btnAccept.Click += new System.EventHandler(this.btnAccept_Click);
		    // 
		    // btnCancel
		    // 
		    this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
		    this.btnCancel.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
		    this.btnCancel.Location = new System.Drawing.Point(466, 393);
		    this.btnCancel.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.btnCancel.Name = "btnCancel";
		    this.btnCancel.Size = new System.Drawing.Size(91, 25);
		    this.btnCancel.TabIndex = 5;
		    this.btnCancel.Text = "btnCancel";
		    this.btnCancel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
		    // 
		    // GroupBox1
		    // 
		    this.GroupBox1.Controls.Add(this.lblHusband);
		    this.GroupBox1.Controls.Add(this.btnHusbandAdd);
		    this.GroupBox1.Controls.Add(this.btnHusbandDelete);
		    this.GroupBox1.Controls.Add(this.btnHusbandSel);
		    this.GroupBox1.Controls.Add(this.btnWifeSel);
		    this.GroupBox1.Controls.Add(this.btnWifeDelete);
		    this.GroupBox1.Controls.Add(this.btnWifeAdd);
		    this.GroupBox1.Controls.Add(this.lblWife);
		    this.GroupBox1.Controls.Add(this.lblStatus);
		    this.GroupBox1.Controls.Add(this.txtHusband);
		    this.GroupBox1.Controls.Add(this.txtWife);
		    this.GroupBox1.Controls.Add(this.cmbMarriageStatus);
		    this.GroupBox1.Dock = System.Windows.Forms.DockStyle.Top;
		    this.GroupBox1.Location = new System.Drawing.Point(0, 0);
		    this.GroupBox1.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.GroupBox1.Name = "GroupBox1";
		    this.GroupBox1.Padding = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.GroupBox1.Size = new System.Drawing.Size(566, 126);
		    this.GroupBox1.TabIndex = 0;
		    this.GroupBox1.TabStop = false;
		    this.GroupBox1.Text = "GroupBox1";
		    // 
		    // lblHusband
		    // 
		    this.lblHusband.AutoSize = true;
		    this.lblHusband.Location = new System.Drawing.Point(4, 28);
		    this.lblHusband.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
		    this.lblHusband.Name = "lblHusband";
		    this.lblHusband.Size = new System.Drawing.Size(59, 13);
		    this.lblHusband.TabIndex = 0;
		    this.lblHusband.Text = "lblHusband";
		    // 
		    // btnHusbandAdd
		    // 
		    this.btnHusbandAdd.Enabled = false;
		    this.btnHusbandAdd.Location = new System.Drawing.Point(461, 21);
		    this.btnHusbandAdd.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.btnHusbandAdd.Name = "btnHusbandAdd";
		    this.btnHusbandAdd.Size = new System.Drawing.Size(31, 27);
		    this.btnHusbandAdd.TabIndex = 2;
		    this.btnHusbandAdd.Click += new System.EventHandler(this.btnHusbandAddClick);
		    // 
		    // btnHusbandDelete
		    // 
		    this.btnHusbandDelete.Enabled = false;
		    this.btnHusbandDelete.Location = new System.Drawing.Point(496, 21);
		    this.btnHusbandDelete.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.btnHusbandDelete.Name = "btnHusbandDelete";
		    this.btnHusbandDelete.Size = new System.Drawing.Size(31, 27);
		    this.btnHusbandDelete.TabIndex = 3;
		    this.btnHusbandDelete.Click += new System.EventHandler(this.btnHusbandDeleteClick);
		    // 
		    // btnHusbandSel
		    // 
		    this.btnHusbandSel.Location = new System.Drawing.Point(531, 21);
		    this.btnHusbandSel.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.btnHusbandSel.Name = "btnHusbandSel";
		    this.btnHusbandSel.Size = new System.Drawing.Size(31, 27);
		    this.btnHusbandSel.TabIndex = 4;
		    this.btnHusbandSel.Click += new System.EventHandler(this.btnHusbandSelClick);
		    // 
		    // btnWifeSel
		    // 
		    this.btnWifeSel.Location = new System.Drawing.Point(531, 50);
		    this.btnWifeSel.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.btnWifeSel.Name = "btnWifeSel";
		    this.btnWifeSel.Size = new System.Drawing.Size(31, 27);
		    this.btnWifeSel.TabIndex = 9;
		    this.btnWifeSel.Click += new System.EventHandler(this.btnWifeSelClick);
		    // 
		    // btnWifeDelete
		    // 
		    this.btnWifeDelete.Enabled = false;
		    this.btnWifeDelete.Location = new System.Drawing.Point(496, 50);
		    this.btnWifeDelete.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.btnWifeDelete.Name = "btnWifeDelete";
		    this.btnWifeDelete.Size = new System.Drawing.Size(31, 27);
		    this.btnWifeDelete.TabIndex = 8;
		    this.btnWifeDelete.Click += new System.EventHandler(this.btnWifeDeleteClick);
		    // 
		    // btnWifeAdd
		    // 
		    this.btnWifeAdd.Enabled = false;
		    this.btnWifeAdd.Location = new System.Drawing.Point(461, 50);
		    this.btnWifeAdd.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.btnWifeAdd.Name = "btnWifeAdd";
		    this.btnWifeAdd.Size = new System.Drawing.Size(31, 27);
		    this.btnWifeAdd.TabIndex = 7;
		    this.btnWifeAdd.Click += new System.EventHandler(this.btnWifeAddClick);
		    // 
		    // lblWife
		    // 
		    this.lblWife.AutoSize = true;
		    this.lblWife.Location = new System.Drawing.Point(4, 57);
		    this.lblWife.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
		    this.lblWife.Name = "lblWife";
		    this.lblWife.Size = new System.Drawing.Size(39, 13);
		    this.lblWife.TabIndex = 5;
		    this.lblWife.Text = "lblWife";
		    // 
		    // lblStatus
		    // 
		    this.lblStatus.AutoSize = true;
		    this.lblStatus.Location = new System.Drawing.Point(4, 89);
		    this.lblStatus.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
		    this.lblStatus.Name = "lblStatus";
		    this.lblStatus.Size = new System.Drawing.Size(48, 13);
		    this.lblStatus.TabIndex = 10;
		    this.lblStatus.Text = "lblStatus";
		    // 
		    // txtHusband
		    // 
		    this.txtHusband.ForeColor = System.Drawing.SystemColors.Control;
		    this.txtHusband.Location = new System.Drawing.Point(88, 25);
		    this.txtHusband.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.txtHusband.Name = "txtHusband";
		    this.txtHusband.ReadOnly = true;
		    this.txtHusband.Size = new System.Drawing.Size(369, 21);
		    this.txtHusband.TabIndex = 1;
		    this.txtHusband.TextChanged += new System.EventHandler(this.EditHusband_TextChanged);
		    // 
		    // txtWife
		    // 
		    this.txtWife.ForeColor = System.Drawing.SystemColors.Control;
		    this.txtWife.Location = new System.Drawing.Point(88, 54);
		    this.txtWife.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.txtWife.Name = "txtWife";
		    this.txtWife.ReadOnly = true;
		    this.txtWife.Size = new System.Drawing.Size(369, 21);
		    this.txtWife.TabIndex = 6;
		    this.txtWife.TextChanged += new System.EventHandler(this.EditWife_TextChanged);
		    // 
		    // cmbMarriageStatus
		    // 
		    this.cmbMarriageStatus.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
		    this.cmbMarriageStatus.Location = new System.Drawing.Point(88, 86);
		    this.cmbMarriageStatus.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.cmbMarriageStatus.Name = "cmbMarriageStatus";
		    this.cmbMarriageStatus.Size = new System.Drawing.Size(163, 21);
		    this.cmbMarriageStatus.TabIndex = 11;
		    // 
		    // lblRestriction
		    // 
		    this.lblRestriction.AutoSize = true;
		    this.lblRestriction.Location = new System.Drawing.Point(10, 398);
		    this.lblRestriction.Margin = new System.Windows.Forms.Padding(2, 0, 2, 0);
		    this.lblRestriction.Name = "lblRestriction";
		    this.lblRestriction.Size = new System.Drawing.Size(68, 13);
		    this.lblRestriction.TabIndex = 2;
		    this.lblRestriction.Text = "lblRestriction";
		    // 
		    // cmbRestriction
		    // 
		    this.cmbRestriction.DropDownStyle = System.Windows.Forms.ComboBoxStyle.DropDownList;
		    this.cmbRestriction.Location = new System.Drawing.Point(179, 396);
		    this.cmbRestriction.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.cmbRestriction.Name = "cmbRestriction";
		    this.cmbRestriction.Size = new System.Drawing.Size(163, 21);
		    this.cmbRestriction.TabIndex = 3;
		    this.cmbRestriction.SelectedIndexChanged += new System.EventHandler(this.cbRestriction_SelectedIndexChanged);
		    // 
		    // tabsFamilyData
		    // 
		    this.tabsFamilyData.Controls.Add(this.pageChilds);
		    this.tabsFamilyData.Controls.Add(this.pageEvents);
		    this.tabsFamilyData.Controls.Add(this.pageNotes);
		    this.tabsFamilyData.Controls.Add(this.pageMultimedia);
		    this.tabsFamilyData.Controls.Add(this.pageSources);
		    this.tabsFamilyData.Dock = System.Windows.Forms.DockStyle.Top;
		    this.tabsFamilyData.Location = new System.Drawing.Point(0, 126);
		    this.tabsFamilyData.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.tabsFamilyData.Name = "tabsFamilyData";
		    this.tabsFamilyData.SelectedIndex = 0;
		    this.tabsFamilyData.Size = new System.Drawing.Size(566, 256);
		    this.tabsFamilyData.TabIndex = 1;
		    // 
		    // pageChilds
		    // 
		    this.pageChilds.Location = new System.Drawing.Point(4, 22);
		    this.pageChilds.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.pageChilds.Name = "pageChilds";
		    this.pageChilds.Size = new System.Drawing.Size(558, 230);
		    this.pageChilds.TabIndex = 0;
		    this.pageChilds.Text = "pageChilds";
		    // 
		    // pageEvents
		    // 
		    this.pageEvents.Location = new System.Drawing.Point(4, 22);
		    this.pageEvents.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.pageEvents.Name = "pageEvents";
		    this.pageEvents.Size = new System.Drawing.Size(558, 230);
		    this.pageEvents.TabIndex = 1;
		    this.pageEvents.Text = "pageEvents";
		    // 
		    // pageNotes
		    // 
		    this.pageNotes.Location = new System.Drawing.Point(4, 22);
		    this.pageNotes.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.pageNotes.Name = "pageNotes";
		    this.pageNotes.Size = new System.Drawing.Size(558, 230);
		    this.pageNotes.TabIndex = 2;
		    this.pageNotes.Text = "pageNotes";
		    // 
		    // pageMultimedia
		    // 
		    this.pageMultimedia.Location = new System.Drawing.Point(4, 22);
		    this.pageMultimedia.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.pageMultimedia.Name = "pageMultimedia";
		    this.pageMultimedia.Size = new System.Drawing.Size(558, 230);
		    this.pageMultimedia.TabIndex = 3;
		    this.pageMultimedia.Text = "pageMultimedia";
		    // 
		    // pageSources
		    // 
		    this.pageSources.Location = new System.Drawing.Point(4, 22);
		    this.pageSources.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.pageSources.Name = "pageSources";
		    this.pageSources.Size = new System.Drawing.Size(558, 230);
		    this.pageSources.TabIndex = 4;
		    this.pageSources.Text = "pageSources";
		    // 
		    // FamilyEditDlg
		    // 
		    this.AcceptButton = this.btnAccept;
		    this.AutoScaleDimensions = new System.Drawing.SizeF(96F, 96F);
		    this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Dpi;
		    this.CancelButton = this.btnCancel;
		    this.ClientSize = new System.Drawing.Size(566, 428);
		    this.Controls.Add(this.tabsFamilyData);
		    this.Controls.Add(this.GroupBox1);
		    this.Controls.Add(this.btnAccept);
		    this.Controls.Add(this.btnCancel);
		    this.Controls.Add(this.lblRestriction);
		    this.Controls.Add(this.cmbRestriction);
		    this.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
		    this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
		    this.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.MaximizeBox = false;
		    this.MinimizeBox = false;
		    this.Name = "FamilyEditDlg";
		    this.ShowInTaskbar = false;
		    this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
		    this.Text = "FamilyEditDlg";
		    this.GroupBox1.ResumeLayout(false);
		    this.GroupBox1.PerformLayout();
		    this.tabsFamilyData.ResumeLayout(false);
		    this.ResumeLayout(false);
		    this.PerformLayout();
		}
	}
}