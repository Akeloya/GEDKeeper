unit BaseMapFrames;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, Contnrs; 

type
  TBaseMapFrame = class; 

  // ����� ����� �� �����
  TMapPoint = class
  private
    FOwner: TBaseMapFrame; 
    FLatitude: Double; 
    FLongitude: Double; 
    FId: String; 
    FCaption: String; 
    FAddress: String; 
    FColor: TColor; 
  public
    constructor Create(AnOwner: TBaseMapFrame; ALatitude: Double; ALongitude: Double; 
      AnId: String; ACaption: String; AColor: TColor; AnAddress: String = ''); 
    property Latitude: Double read FLatitude write FLatitude;    // ������
    property Longitude: Double read FLongitude write FLongitude; // �������
    property Id: String read FId write FId;                      // �������������
    property Caption: String read FCaption write FCaption;       // �����
    property Address: String read FAddress write FAddress;       // �����
    property Color: TColor read FColor write FColor;             // ����
  end; 

  // ��� ��������, �������������� � ������
  TPointsChangingType = (
    pctAdded,            // ����������
    pctModified,         // ���������
    pctDeleted,          // ��������
    pctCleared,          // ������ ����� ������
    pctContiniousUpdate  // ���������� ���������
  ); 

  // ����������
  TCoordinate = record
    Latitude, Longtude: Double; 
  end; 

  // "�������������" ���������
  TCoordsRect = record
    MinLon, MinLat, MaxLon, MaxLat: Double; 
  end; 

  // ��� ������� �������� ��� ������� ����� (���������)
  TPointsChangingEvent = procedure (Sender: TBaseMapFrame; PointsChangingType: TPointsChangingType; 
    Index: Integer) of object; 

  // ������� ����� ������ � ������
  TBaseMapFrame = class(TFrame)
  private
  protected
    FPoints: TObjectList; 
    FUpdateCount: Integer; 
    FShowPoints: Boolean; 
    FShowLines: Boolean; 

    procedure Initialize; virtual; 
    function GetPointsCount: Integer; 
    function GetPoint(Index: Integer): TMapPoint; 
    procedure PointsChanged(ChangingType: TPointsChangingType; Index: Integer); 
  protected
    FPointsChangingEvent: TPointsChangingEvent; 
    FOnMapLoaded: TNotifyEvent; 
    procedure SetVisibleElementes(Index: Integer; Value: Boolean); 
  public
    constructor Create(AnOwner: TComponent); override; 
    destructor Destroy; override; 

    procedure BeginUpdate; 
    procedure EndUpdate; 
    procedure RefreshPoints; virtual; abstract; 

    procedure ShowPoint(Index: Integer); virtual; abstract; 
    procedure HidePoint(Index: Integer); virtual; abstract; 

    procedure SetLocation(Location: String); virtual; abstract; 
    procedure SetCenter(Latitude: Double; Longitude: Double; Scale: Integer=-1); virtual; abstract; 
    procedure ZoomIn; virtual; abstract; 
    procedure ZoomOut; virtual; abstract; 
    procedure UnZoom; virtual; abstract; 

    function AddPoint(Point: TMapPoint): Integer; overload; virtual; 
    function AddPoint(ALatitude: Double; ALongitude: Double; AId: String; 
      ACaption: String; AColor: TColor; AnAddress: String=''): Integer; overload; virtual; 
    procedure DeletePoint(Index: Integer); overload; virtual; 
    procedure DeletePoint(Point: TMapPoint); overload; virtual; 
    procedure ClearPoints; virtual; 
    function GetRouteFrame: TCoordsRect; 
    procedure ZoomToRoute; virtual; abstract; 

    property PointsCount: Integer read GetPointsCount; 
    property Points[Index: Integer]: TMapPoint read GetPoint; default; 

    property ShowPoints: Boolean index 0 read FShowPoints write SetVisibleElementes default True; 
    property ShowLines: Boolean index 1 read FShowLines write SetVisibleElementes default False; 

    property PointsChangingEvent: TPointsChangingEvent read FPointsChangingEvent
      write FPointsChangingEvent; 
    property OnMapLoaded: TNotifyEvent read FOnMapLoaded write FOnMapLoaded; 
  end; 

implementation

{$R *.dfm}

// ����������� �����
constructor TMapPoint.Create(AnOwner: TBaseMapFrame; ALatitude: Double; ALongitude: Double; 
  AnId: String; ACaption: String; AColor: TColor; AnAddress: String=''); 
begin
  FOwner := AnOwner; 
  FLatitude := ALatitude; 
  FLongitude := ALongitude; 
  FId := AnId; 
  FCaption := ACaption; 
  FAddress := AnAddress; 
  FColor := AColor;
end; 

// ����������� ������
constructor TBaseMapFrame.Create(AnOwner: TComponent); 
begin
  inherited Create(AnOwner); 
  Initialize(); 
end; 

// �������������
procedure TBaseMapFrame.Initialize; 
begin
  FPoints := TObjectList.Create(True); 
  FUpdateCount := 0; 
  FShowPoints := True; 
  FShowLines := True; 
end; 

// ���������� ������
destructor TBaseMapFrame.Destroy; 
begin
  ClearPoints; 
  FPoints.Free; 
  inherited Destroy; 
end; 

// ��������� �����
function TBaseMapFrame.GetPointsCount: Integer; 
begin
  Result := FPoints.Count; 
end; 

// ��������� ����� �� �������
function TBaseMapFrame.GetPoint(Index: Integer): TMapPoint; 
begin
  Result := nil;
  if (Index >= 0) and (Index < PointsCount)
  then Result := TMapPoint(FPoints[Index]);
end;

// ���������� ������������� ���������� �����
function TBaseMapFrame.AddPoint(Point: TMapPoint): Integer;
begin
  Result := FPoints.Add(Point);
  if (FUpdateCount < 1) then begin
    PointsChanged(pctAdded, Result);
    ShowPoint(Result);
  end;
end;

// ���������� ��������������� ���������� �����
function TBaseMapFrame.AddPoint(ALatitude: Double; ALongitude: Double; AId: String;
  ACaption: String; AColor: TColor; AnAddress: String=''): Integer;
var
  Point: TMapPoint;
begin
  Point := TMapPoint.Create(Self, ALatitude, ALongitude, AId, ACaption, AColor, AnAddress);
  Result := AddPoint(Point);
end;

// �������� ����� �� �������
procedure TBaseMapFrame.DeletePoint(Index: Integer);
begin
  HidePoint(Index);
  FPoints.Delete(Index);
  PointsChanged(pctDeleted, Index);
end; 

// �������� ���������� �����
procedure TBaseMapFrame.DeletePoint(Point: TMapPoint); 
var
  Index: Integer; 
begin
  Index := FPoints.IndexOf(Point); 
  if (Index > -1) then begin
    HidePoint(Index);
    FPoints.Remove(Point);
    PointsChanged(pctDeleted, Index);
  end; 
end; 

// ������� ������ �����
procedure TBaseMapFrame.ClearPoints; 
begin
  FPoints.Clear; 
  PointsChanged(pctCleared, -1);
end;

// ������� ������ ������� ��������� ������ �����
procedure TBaseMapFrame.PointsChanged(ChangingType: TPointsChangingType; Index: Integer);
begin
  if Assigned(FPointsChangingEvent) then
    FPointsChangingEvent(Self, ChangingType, Index); 
end; 

// ��������� "��������������", � ������� ������ �������
function TBaseMapFrame.GetRouteFrame: TCoordsRect;
var
  i: Integer;
  Point: TMapPoint;
begin
  FillChar(Result, SizeOf(Result), 0);
  if (PointsCount > 0) then begin
    Point := Points[0];
    Result.MinLon := Point.FLongitude;
    Result.MinLat := Point.FLatitude;
    Result.MaxLon := Point.Longitude;
    Result.MaxLat := Point.Latitude;

    for i := 0 to PointsCount-1 do begin
      Point := Points[i]; 

      if Result.MinLon>Point.Longitude then
        Result.MinLon := Point.Longitude
      else
      if Result.MaxLon<Point.Longitude then
        Result.MaxLon := Point.Longitude;

      if Result.MinLat>Point.Latitude then
        Result.MinLat := Point.Latitude
      else
      if Result.MaxLat<Point.Latitude then
        Result.MaxLat := Point.Latitude;
    end;
  end;
end;

// ������ ���������� ���������
procedure TBaseMapFrame.BeginUpdate;
begin
  Inc(FUpdateCount);
end;

// ��������� ���������� ���������
procedure TBaseMapFrame.EndUpdate;
begin
  Dec(FUpdateCount);
  if (FUpdateCount <= 0) then begin
    RefreshPoints;
    PointsChanged(pctContiniousUpdate, -1);
    FUpdateCount := 0;
  end;
end;

// ��������� ��������� ����� � ����� ����� ����
procedure TBaseMapFrame.SetVisibleElementes(Index: Integer; Value: Boolean);
begin
  case Index of
    0: FShowPoints := Value;
    1: FShowLines := Value;
  end; 
  RefreshPoints; 
end;

end.
