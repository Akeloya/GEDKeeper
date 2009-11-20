unit GoogleMapFrames;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, BaseMapFrames, OleCtrls, SHDocVw, HTTPApp, HTTPProd, ActiveX, MSHTML;

type
  // ����� ������ ���� Google
  TGoogleMapFrame = class(TBaseMapFrame)
    WebBrowser: TWebBrowser;
    procedure WebBrowserStatusTextChange(Sender: TObject; const Text: WideString);
  private
    FLocation: String;
    FInitialized: Boolean;
    function PointToAddString(MapPoint: TMapPoint): String;
  protected
    procedure Initialize(); override;
    procedure ExecScript(Script: String);
    procedure ClearPointsOnMap();
  public
    procedure RefreshPoints(); override;
    procedure ShowPoint(Index: Integer); override;
    procedure HidePoint(Index: Integer); override;

    procedure SetLocation(Location: String); override;
    procedure SetCenter(Latitude: Double; Longitude: Double; Scale: Integer = -1); override;
    procedure ZoomIn(); override;
    procedure ZoomOut(); override;
    procedure UnZoom(); override;

    procedure ClearPoints(); override;
    procedure ZoomToRoute(); override;

    procedure AddMarker(Lat, Lon: Double; Hint: String);
    procedure ZoomToBounds(aRect: TCoordsRect);
  end;

var
  GoogleMapFrame: TGoogleMapFrame;

implementation

{$R *.dfm}

// �������������
procedure TGoogleMapFrame.Initialize();
begin
  inherited Initialize;
  // ���� "����� �� ���������"
  FInitialized := False;
end;

procedure TGoogleMapFrame.SetLocation(Location: String);
begin
  // ��������� ������������ �����
  FLocation := Location;
  WebBrowser.Navigate(FLocation);
end;

// ����������� ������� �������� �����
procedure TGoogleMapFrame.WebBrowserStatusTextChange(Sender: TObject;
  const Text: WideString);
begin
  if not FInitialized and (WebBrowser.ReadyState = READYSTATE_COMPLETE) then begin
    FInitialized := True;
    if Assigned(FOnMapLoaded) then FOnMapLoaded(Self);
  end;
end;

// �������������� ����������� �����
procedure TGoogleMapFrame.RefreshPoints();
var
  PointsScript: String;
  PolylineScript: String;
  i: Integer;
  Point: TMapPoint;
begin
  // ������� ����� ������ �� �����, �� ������ �� ���������
  ClearPointsOnMap;

  if PointsCount > 0 then begin
    for i := 0 to PointsCount - 1 do begin
      Point := Points[i];
      // ��������� ������ �������� �����
      PointsScript := PointsScript + PointToAddString(Point);
      // ��������� ������ �������� ����� ��������
      PolylineScript := PolylineScript + 'new GLatLng(' +
        FloatToStr(Point.Latitude) + ',' + FloatToStr(Point.Longitude) + '),';
    end;

    // ���� ������ ���� �������� �����, �� ������
    if ShowPoints then
      ExecScript(PointsScript);

    // ���� ������ ���� �������� �����
    if ShowLines then begin
      // �������� ������
      Delete(PolylineScript, Length(PolylineScript), 1);
      PolylineScript := 'var polyline = new GPolyline([' +
        PolylineScript + '],"#FF0000",3);map.addOverlay(polyline);';
      // ���������
      ExecScript(PolylineScript);
    end;
  end;
end;

// ���������� ����� � �������� ��������
procedure TGoogleMapFrame.ShowPoint(Index: Integer);
var
  Script: String;
begin
  // �������������� �����
  HidePoint(Index);
  // �������� ������
  Script := PointToAddString(Points[Index]);
  // ��������
  ExecScript(Script);
end;

procedure TGoogleMapFrame.AddMarker(Lat, Lon: Double; Hint: String);
var
  Script: String;
begin
  Script := Format('addMarker(%.6f, %.6f, "%s");', [Lat, Lon, Hint]);
  ExecScript(Script);
end;

// �������� ����� � �������� ��������
procedure TGoogleMapFrame.HidePoint(Index: Integer);
var
  Script: String;
begin
  if Index >= PointsCount then Exit;
  // ��������� ������
  Script := 'map.removeTLabelById("' + Points[Index].Id + '");';
  ExecScript(Script);
end;

// ������������ ������� �� ���������� �����
function TGoogleMapFrame.PointToAddString(MapPoint: TMapPoint):String;
var
  ColorStr: String;
begin
  ColorStr := ColorToString(MapPoint.Color) + 'label';
  if (Copy(ColorStr, 1, 2) = 'cl') then Delete(ColorStr, 1, 2);
  Result := 'createTLabel("%s", new GLatLng(%.8f, %.8f), "%s", "%s");';
  Result := Format(Result, [MapPoint.Id, MapPoint.Latitude, MapPoint.Longitude, MapPoint.Caption, ColorStr]);
end;

// ���������� �������
procedure TGoogleMapFrame.ExecScript(Script: String);
begin
  if (Trim(Script) = '') then Exit;

  try
    if WebBrowser.Document <> nil then
      IHTMLDocument2(WebBrowser.Document).parentWindow.execScript(Script, 'JavaScript');
  except
    on E: Exception do begin
      MessageBox(Handle, PChar(E.Message), '������ ����������', MB_OK or MB_ICONERROR);
    end;
  end;
end;

// ������������� �����
procedure TGoogleMapFrame.SetCenter(Latitude: Double; Longitude: Double; Scale: Integer = -1);
var
  Script: String;
begin
  // ���� ��� ������ ������ �������
  if Scale >= 0 then begin
    Script := 'var point = new GLatLng(' + FloatToStr(Latitude) + ',' + FloatToStr(Longitude) + '); ' +
      'map.setCenter(point, ' + IntToStr(Scale) + ')';
  end else begin
  // ���� �� ������, �� ������� �����������
    Script := 'var point = new GLatLng(' + FloatToStr(Latitude) + ',' + FloatToStr(Longitude) + '); ' +
      'map.setCenter(point)';
  end;
  ExecScript(Script);
end;

// ����������� �����
procedure TGoogleMapFrame.ZoomIn();
begin
  ExecScript('map.zoomIn();');
end;

// ��������� �����
procedure TGoogleMapFrame.ZoomOut();
begin
  ExecScript('map.zoomOut();');
end;

// ��������� ���������� ��������
procedure TGoogleMapFrame.UnZoom();
begin
  SetCenter(59.944265,30.319948,10);
end;

// ������� ����� �� ����� ��� �������� �� ������ �����
procedure TGoogleMapFrame.ClearPointsOnMap();
var
  i: Integer;
  Script: String;
begin
  Script := 'map.clearOverlays();';
  for i := 0 to PointsCount - 1 do
    Script := Script + 'map.removeTLabelById("' + Points[i].Id + '");';
  ExecScript(Script);
end;

// ������� ������ �����
procedure TGoogleMapFrame.ClearPoints();
begin
  ClearPointsOnMap;
  inherited ClearPoints;
end;

procedure TGoogleMapFrame.ZoomToBounds(aRect: TCoordsRect);
var
  Script: String;
  Center: TCoordinate;
begin
  if (aRect.MinLon <> aRect.MaxLon) and (aRect.MinLat <> aRect.MaxLat) then begin
    Center.Longtude := (aRect.MaxLon + aRect.MinLon) / 2;
    Center.Latitude := (aRect.MaxLat + aRect.MinLat) / 2;

    Script := 'var point1 = new GLatLng(%.7f, %.7f);'+
              'var point2 = new GLatLng(%.7f, %.7f);'+
              'var bounds = new GLatLngBounds(point1, point2);'+
              'var zoom = map.getBoundsZoomLevel(bounds);'+
              'map.setCenter(new GLatLng(%.7f, %.7f), zoom);';
    Script := Format(Script, [aRect.MinLat, aRect.MinLon,
       aRect.MaxLat, aRect.MaxLon, Center.Latitude, Center.Longtude]);
    ExecScript(Script);
  end;
end;

// ��������������� ����� �� ��������
procedure TGoogleMapFrame.ZoomToRoute();
var
  Frame: TCoordsRect;
begin
  Frame := GetRouteFrame();
  ZoomToBounds(Frame);
end;

end.
