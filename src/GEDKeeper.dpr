program GEDKeeper;

{$I GEDKeeper.inc}

{%ToDo 'GEDKeeper.todo'}

uses
  Windows,
  Messages,
  Forms,
  GedCom551 in 'GedCom551.pas',
  GKCommon in 'GKCommon.pas',
  GKImport in 'GKImport.pas',
  GKExport in 'GKExport.pas',
  GKChartCore in 'GKChartCore.pas',
  GKMain in 'GKMain.pas' {fmGEDKeeper},
  GKBase in 'GKBase.pas' {fmBase},
  GKPersonNew in 'GKPersonNew.pas' {fmPersonNew},
  GKRecordSelect in 'GKRecordSelect.pas' {fmRecordSelect},
  GKEventEdit in 'GKEventEdit.pas' {fmEventEdit},
  GKNoteEdit in 'GKNoteEdit.pas' {fmNoteEdit},
  GKSourceEdit in 'GKSourceEdit.pas' {fmSourceEdit},
  GKChart in 'GKChart.pas' {fmChart},
  GKAbout in 'GKAbout.pas' {fmAbout},
  GKFileProperties in 'GKFileProperties.pas' {fmFileProperties},
  GKTreeTools in 'GKTreeTools.pas' {fmTreeTools},
  GKStats in 'GKStats.pas' {fmStats},
  GKPersonEdit in 'GKPersonEdit.pas' {fmPersonEdit},
  GKOptions in 'GKOptions.pas' {fmOptions},
  GKFamilyEdit in 'GKFamilyEdit.pas' {fmFamilyEdit},
  GKAssociationEdit in 'GKAssociationEdit.pas' {fmAssociationEdit},
  GKFilter in 'GKFilter.pas' {fmFilter},
  GKGroupEdit in 'GKGroupEdit.pas' {fmGroupEdit},
  GKPersonScan in 'GKPersonScan.pas' {fmPersonScan},
  GKProgress in 'GKProgress.pas' {fmProgress},
  GKAddressEdit in 'GKAddressEdit.pas' {fmAddressEdit},
  GKSourceCitEdit in 'GKSourceCitEdit.pas' {fmSourceCitEdit},
  GKRepositoryEdit in 'GKRepositoryEdit.pas' {fmRepositoryEdit},
  GKMediaEdit in 'GKMediaEdit.pas' {fmMediaEdit},
  GKMediaView in 'GKMediaView.pas' {fmMediaView},
  GKMaps in 'GKMaps.pas' {fmMaps};

{$R *.res}

procedure RunInstance();
var
  i: integer;
  hMainForm: hwnd;
  copyDataStruct: TCopyDataStruct;
  ParamString: string;
  WParam, LParam: integer;
begin
  // ���� ������� ���� ����������, ������ Caption - nil,
  // ��������� � ��������� �������� ���� ����� ���������� ��������� MDIChild
  // (����� ������������ �� ������������ ����� ������ ������� �����)

  hMainForm := FindWindow('TfmGEDKeeper', nil);
  if (hMainForm = 0) then begin
    Application.Initialize;
    Application.Title := 'GEDKeeper';
    Application.CreateForm(TfmGEDKeeper, fmGEDKeeper);
  for i := 1 to ParamCount do fmGEDKeeper.CreateBase(ParamStr(i));
    Application.Run;
  end else begin
    ParamString := '';
    for i := 1 to ParamCount do begin
      // ���������� ��� ��������� � ���� ������ � ������������� ?13
      ParamString := ParamString + ParamStr(i) + #13;
    end;
    // ������� ������ ���� TCopyDataStruct

    CopyDataStruct.lpData := PChar(ParamString);
    CopyDataStruct.cbData := Length(ParamString);
    CopyDataStruct.dwData := 0;
    WParam := Application.Handle;
    LParam := Integer(@CopyDataStruct);
    // �������� ��������� WM_COPYDATA �������� ���� ��������� ����������

    SendMessage(hMainForm, WM_CopyData, WParam, LParam);
    Application.Terminate;
  end;
end;

begin
  RunInstance();
end.
