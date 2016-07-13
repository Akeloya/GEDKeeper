﻿using System;

namespace GKUI.Dialogs
{
	partial class CommonFilterDlg
	{
		private System.Windows.Forms.Button btnAccept;
		private System.Windows.Forms.Button btnCancel;
		protected System.Windows.Forms.TabControl tabsFilters;
		private System.Windows.Forms.TabPage tsFieldsFilter;
		private System.Windows.Forms.Button btnReset;
		private System.Windows.Forms.DataGridView dataGridView1;

		private void InitializeComponent()
		{
		    this.pnlButtons = new System.Windows.Forms.Panel();
		    this.btnReset = new System.Windows.Forms.Button();
		    this.btnAccept = new System.Windows.Forms.Button();
		    this.btnCancel = new System.Windows.Forms.Button();
		    this.pnlClient = new System.Windows.Forms.Panel();
		    this.tabsFilters = new System.Windows.Forms.TabControl();
		    this.tsFieldsFilter = new System.Windows.Forms.TabPage();
		    this.dataGridView1 = new System.Windows.Forms.DataGridView();
		    this.pnlButtons.SuspendLayout();
		    this.pnlClient.SuspendLayout();
		    this.tabsFilters.SuspendLayout();
		    this.tsFieldsFilter.SuspendLayout();
		    ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
		    this.SuspendLayout();
		    // 
		    // pnlButtons
		    // 
		    this.pnlButtons.Controls.Add(this.btnReset);
		    this.pnlButtons.Controls.Add(this.btnAccept);
		    this.pnlButtons.Controls.Add(this.btnCancel);
		    this.pnlButtons.Dock = System.Windows.Forms.DockStyle.Bottom;
		    this.pnlButtons.Location = new System.Drawing.Point(0, 420);
		    this.pnlButtons.Margin = new System.Windows.Forms.Padding(0);
		    this.pnlButtons.Name = "pnlButtons";
		    this.pnlButtons.Size = new System.Drawing.Size(687, 50);
		    this.pnlButtons.TabIndex = 5;
		    // 
		    // btnReset
		    // 
		    this.btnReset.Location = new System.Drawing.Point(13, 11);
		    this.btnReset.Margin = new System.Windows.Forms.Padding(13, 13, 0, 0);
		    this.btnReset.Name = "btnReset";
		    this.btnReset.Size = new System.Drawing.Size(91, 24);
		    this.btnReset.TabIndex = 6;
		    this.btnReset.Text = "btnReset";
		    this.btnReset.Click += new System.EventHandler(this.btnReset_Click);
		    // 
		    // btnAccept
		    // 
		    this.btnAccept.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
		    this.btnAccept.Location = new System.Drawing.Point(480, 13);
		    this.btnAccept.Margin = new System.Windows.Forms.Padding(0, 13, 13, 0);
		    this.btnAccept.Name = "btnAccept";
		    this.btnAccept.Size = new System.Drawing.Size(90, 24);
		    this.btnAccept.TabIndex = 4;
		    this.btnAccept.Text = "btnAccept";
		    this.btnAccept.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
		    this.btnAccept.Click += new System.EventHandler(this.btnAccept_Click);
		    // 
		    // btnCancel
		    // 
		    this.btnCancel.DialogResult = System.Windows.Forms.DialogResult.Cancel;
		    this.btnCancel.ImageAlign = System.Drawing.ContentAlignment.MiddleLeft;
		    this.btnCancel.Location = new System.Drawing.Point(583, 13);
		    this.btnCancel.Margin = new System.Windows.Forms.Padding(0, 13, 13, 0);
		    this.btnCancel.Name = "btnCancel";
		    this.btnCancel.Size = new System.Drawing.Size(91, 24);
		    this.btnCancel.TabIndex = 5;
		    this.btnCancel.Text = "btnCancel";
		    this.btnCancel.TextAlign = System.Drawing.ContentAlignment.MiddleRight;
		    // 
		    // pnlClient
		    // 
		    this.pnlClient.Controls.Add(this.tabsFilters);
		    this.pnlClient.Dock = System.Windows.Forms.DockStyle.Fill;
		    this.pnlClient.Location = new System.Drawing.Point(0, 0);
		    this.pnlClient.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.pnlClient.Name = "pnlClient";
		    this.pnlClient.Padding = new System.Windows.Forms.Padding(13, 13, 13, 13);
		    this.pnlClient.Size = new System.Drawing.Size(687, 420);
		    this.pnlClient.TabIndex = 6;
		    // 
		    // tabsFilters
		    // 
		    this.tabsFilters.Controls.Add(this.tsFieldsFilter);
		    this.tabsFilters.Dock = System.Windows.Forms.DockStyle.Fill;
		    this.tabsFilters.Location = new System.Drawing.Point(13, 13);
		    this.tabsFilters.Margin = new System.Windows.Forms.Padding(0, 0, 0, 13);
		    this.tabsFilters.Name = "tabsFilters";
		    this.tabsFilters.SelectedIndex = 0;
		    this.tabsFilters.Size = new System.Drawing.Size(661, 394);
		    this.tabsFilters.TabIndex = 1;
		    // 
		    // tsFieldsFilter
		    // 
		    this.tsFieldsFilter.Controls.Add(this.dataGridView1);
		    this.tsFieldsFilter.Location = new System.Drawing.Point(4, 22);
		    this.tsFieldsFilter.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.tsFieldsFilter.Name = "tsFieldsFilter";
		    this.tsFieldsFilter.Size = new System.Drawing.Size(653, 368);
		    this.tsFieldsFilter.TabIndex = 1;
		    this.tsFieldsFilter.Text = "tsFieldsFilter";
		    // 
		    // dataGridView1
		    // 
		    this.dataGridView1.AllowUserToResizeRows = false;
		    this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
		    this.dataGridView1.Dock = System.Windows.Forms.DockStyle.Fill;
		    this.dataGridView1.Location = new System.Drawing.Point(0, 0);
		    this.dataGridView1.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.dataGridView1.MultiSelect = false;
		    this.dataGridView1.Name = "dataGridView1";
		    this.dataGridView1.Size = new System.Drawing.Size(653, 368);
		    this.dataGridView1.TabIndex = 6;
		    // 
		    // CommonFilterDlg
		    // 
		    this.AutoScaleDimensions = new System.Drawing.SizeF(96F, 96F);
		    this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Dpi;
		    this.ClientSize = new System.Drawing.Size(687, 470);
		    this.Controls.Add(this.pnlClient);
		    this.Controls.Add(this.pnlButtons);
		    this.Font = new System.Drawing.Font("Tahoma", 8.25F, System.Drawing.FontStyle.Regular, System.Drawing.GraphicsUnit.Point, ((byte)(204)));
		    this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedDialog;
		    this.Margin = new System.Windows.Forms.Padding(2, 2, 2, 2);
		    this.MaximizeBox = false;
		    this.MinimizeBox = false;
		    this.Name = "CommonFilterDlg";
		    this.StartPosition = System.Windows.Forms.FormStartPosition.CenterParent;
		    this.Text = "CommonFilterDlg";
		    this.pnlButtons.ResumeLayout(false);
		    this.pnlClient.ResumeLayout(false);
		    this.tabsFilters.ResumeLayout(false);
		    this.tsFieldsFilter.ResumeLayout(false);
		    ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
		    this.ResumeLayout(false);
		}
		private System.Windows.Forms.Panel pnlClient;
		private System.Windows.Forms.Panel pnlButtons;
	}
}