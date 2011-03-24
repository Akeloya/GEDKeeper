unit GKCalendar; {prepare:fin}

{$I GEDKeeper.inc}

interface

uses
  SysUtils, Classes, Controls, Forms, Dialogs, ComCtrls;

type
  TfmCalendar = class(TForm)
    lvDates: TListView;
    qtc: TMonthCalendar;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    procedure DateChange(Sender: TObject);
  public
  end;

var
  fmCalendar: TfmCalendar;

implementation

uses
  GKMain, GKCalendarCore;

{$R *.dfm}

{ TfmCalendar }

procedure TfmCalendar.FormCreate(Sender: TObject);
begin
  qtc.Date := Now();
  qtc.OnClick := DateChange;
  DateChange(nil);
end;

procedure TfmCalendar.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fmGEDKeeper.miCalendar.Checked := False;
  fmCalendar := nil;
  Action := caFree;
end;

procedure TfmCalendar.DateChange(Sender: TObject);

  procedure AddItem(aCalendar, aDate: string);
  var
    item: TListItem;
  begin
    item := lvDates.Items.Add;
    item.Caption := aCalendar;
    item.SubItems.Add(aDate);
  end;

var
  gdt: TDate;
  edt: TExDate;
  jd: Double;
  major, cycle, year, month, day: Integer;
  s: string;
begin
  gdt := qtc.Date;

  lvDates.Clear;

  edt.Era := AD;

  DecodeDate(gdt, edt.Year, edt.Month, edt.Day);
  s := gkDateToStr(edt) + ', ' + LongDayNames[DayOfWeek(gdt)];
  AddItem('�������������', s);

  jd := gregorian_to_jd(edt.Year, edt.Month, edt.Day) { + (Math.floor(sec + 60 * (min + 60 * hour) + 0.5) / 86400.0);};
  jd_to_julian(jd, year, month, day);
  edt.Day := day;
  edt.Month := month;
  edt.Year := year;
  AddItem('���������', gkDateToStr(edt));

  jd_to_hebrew(jd, year, month, day);
  s := IntToStr(day) + ' ';
  s := s + HebrewMonths[month];
  s := s + ' ' + IntToStr(year) + ', ' + HebrewWeekdays[jwday(jd)];
  AddItem('���������', s);

  jd_to_islamic(jd, year, month, day);
  s := IntToStr(day) + ' ';
  s := s + IslamicMonths[month];
  s := s + ' ' + IntToStr(year) + ', ���� ' + IslamicWeekdays[jwday(jd)];
  AddItem('��������� (������)', s);

  jd_to_persian(jd, year, month, day);
  s := IntToStr(day) + ' ';
  s := s + PersianMonths[month];
  s := s + ' ' + IntToStr(year) + ', ' + PersianWeekdays[jwday(jd)];
  AddItem('��������', s);

  jd_to_indian_civil(jd, year, month, day);
  s := IntToStr(day) + ' ';
  s := s + IndianCivilMonths[month];
  s := s + ' ' + IntToStr(year) + ', ' + IndianCivilWeekdays[jwday(jd)];
  AddItem('���������', s);

  jd_to_bahai(jd, major, cycle, year, month, day);
  s := '����-� ���'' ' + IntToStr(major) + ', ����� ' + IntToStr(cycle) + ', ';
  s := s + IntToStr(day) + ' ';
  s := s + BahaiMonths[month];
  s := s + ' ' + IntToStr(year) + ', ' + BahaiWeekdays[jwday(jd)];
  AddItem('�����', s);
end;

end.
