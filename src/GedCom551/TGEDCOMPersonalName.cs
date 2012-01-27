using System;
using System.IO;
using System.Runtime.InteropServices;

using GKSys;

/// <summary>
/// Localization: clean
/// </summary>

namespace GedCom551
{
	public sealed class TGEDCOMPersonalName : TGEDCOMTag
	{
		public string FullName
		{
			get { return this.GetFullName(); }
		}

		public string FirstPart
		{
			get { return this.GetFirstPart(); }
		}

		public string Surname
		{
			get { return this.GetSurname(); }
			set { this.SetSurname(value); }
		}

		public string LastPart
		{
			get { return this.GetLastPart(); }
		}

		public TGEDCOMPersonalNamePieces Pieces; // property/field

		public TGEDCOMNameType NameType
		{
			get { return GetNameTypeVal(base.GetTagStringValue("TYPE").Trim().ToLower()); }
			set { base.SetTagStringValue("TYPE", GetNameTypeStr(value)); }
		}

		public void GetNameParts(out string AFirstPart, out string ASurname/*, out string ALastPart*/)
		{
			string sv = base.StringValue;
			if (sv == null || sv.Length == 0) {
				AFirstPart = "";
				ASurname = "";
			} else {
				int p = sv.IndexOf('/');

				if (p < 0) {
					AFirstPart = "";
				} else {
					AFirstPart = sv.Substring(0, p);
					AFirstPart = SysUtils.TrimRight(AFirstPart);
				}

				int p2 = ((p < 0) ? -1 : sv.IndexOf('/', p + 1));

				if (p < 0 || p2 < 0) {
					ASurname = "";
				} else {
					p++;
					ASurname = sv.Substring(p, p2 - p);
				}
			}

			//ALastPart = GetLastPart();
		}

		private string GetFirstPart()
		{
			string result;

			string sv = base.StringValue;
			if (sv == null || sv.Length == 0) {
				result = "";
			} else {
				int p = sv.IndexOf('/');
				if (p < 0) {
					result = "";
				} else {
					result = sv.Substring(0, p);
					result = SysUtils.TrimRight(result);
				}
			}

			return result;
		}

		private string GetSurname()
		{
			string result;

			string sv = base.StringValue;
			if (sv == null || sv.Length == 0) {
				result = "";
			} else {
				int p = sv.IndexOf('/');
				int p2 = ((p < 0) ? -1 : sv.IndexOf('/', p + 1));

				if (p < 0 || p2 < 0) {
					result = "";
				} else {
					p++;
					result = sv.Substring(p, p2 - p);
				}
			}

			return result;
		}

		private string GetLastPart()
		{
			string Result;
			string sv = base.StringValue;

			int p = SysUtils.Pos("/", sv);
			if (p > 0)
			{
				Result = SysUtils.WStrCopy(sv, p + 1, 2147483647);

				p = SysUtils.Pos("/", Result);
				if (p > 0)
				{
					Result = SysUtils.TrimLeft(SysUtils.WStrCopy(Result, p + 1, 2147483647));
				}
				else
				{
					Result = "";
				}
			}
			else
			{
				Result = "";
			}

			return Result;
		}

		private string GetFullName()
		{
			string Result = base.StringValue;
			while (SysUtils.Pos("/", Result) > 0)
			{
				int num = SysUtils.Pos("/", Result);
				Result = Result.Remove(num - 1, 1);
			}
			return Result;
		}

		private void SetSurname([In] string Value)
		{
			base.StringValue = string.Concat(new string[]
			{
				SysUtils.TrimLeft(this.FirstPart + " "), "/", Value, "/", SysUtils.TrimRight(" " + this.LastPart)
			});
		}

		protected override void CreateObj(TGEDCOMTree AOwner, TGEDCOMObject AParent)
		{
			base.CreateObj(AOwner, AParent);
			this.FName = "NAME";
			this.Pieces = new TGEDCOMPersonalNamePieces(AOwner, this, "", "");
			this.Pieces.SetLevel(base.Level);
		}

		public override void Dispose()
		{
			if (!this.Disposed_)
			{
				this.Pieces.Dispose();

				base.Dispose();
				this.Disposed_ = true;
			}
		}

		public override TGEDCOMTag AddTag([In] string ATag, [In] string AValue, TagConstructor ATagConstructor)
		{
			TGEDCOMTag Result;
			if (ATag == "TYPE" || ATag == "FONE" || ATag == "ROMN")
			{
				Result = base.AddTag(ATag, AValue, ATagConstructor);
			}
			else
			{
				Result = this.Pieces.AddTag(ATag, AValue, ATagConstructor);
			}
			return Result;
		}

		public override void Assign(TGEDCOMCustomTag Source)
		{
			base.Assign(Source);

			if (Source is TGEDCOMPersonalName)
			{
				this.Pieces.Assign(((TGEDCOMPersonalName)Source).Pieces);
			}
		}

		public override void Clear()
		{
			base.Clear();
			if (this.Pieces != null) this.Pieces.Clear();
		}

		public override bool IsEmpty()
		{
			return base.IsEmpty() && this.Pieces.IsEmpty();
		}

		public override void Pack()
		{
			base.Pack();
			this.Pieces.Pack();
		}

		public override void ReplaceXRefs(TXRefReplaceMap aMap)
		{
			base.ReplaceXRefs(aMap);
			this.Pieces.ReplaceXRefs(aMap);
		}

		public override void ResetOwner(TGEDCOMTree AOwner)
		{
			base.ResetOwner(AOwner);
			this.Pieces.ResetOwner(AOwner);
		}

		public override void SaveToStream(StreamWriter AStream)
		{
			base.SaveToStream(AStream);
			this.Pieces.SaveToStream(AStream);
		}

		public void SetNameParts([In] string FirstPart, [In] string Surname, [In] string LastPart)
		{
			base.StringValue = string.Concat(new string[]
			{
				SysUtils.TrimLeft(FirstPart + " "), "/", Surname, "/", SysUtils.TrimRight(" " + LastPart)
			});
		}

		public TGEDCOMPersonalName(TGEDCOMTree AOwner, TGEDCOMObject AParent, [In] string AName, [In] string AValue) : base(AOwner, AParent, AName, AValue)
		{
		}

		public new static TGEDCOMCustomTag Create(TGEDCOMTree AOwner, TGEDCOMObject AParent, [In] string AName, [In] string AValue)
		{
			return new TGEDCOMPersonalName(AOwner, AParent, AName, AValue);
		}
	}
}
