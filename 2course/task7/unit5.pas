unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  TFigure = class
  protected
    x, y: integer;
  public
    constructor Create(ax, ay: integer);
    function GetX: integer;
    function GetY: integer;
    procedure SetXY(ax, ay: integer);
    procedure MoveTo(ax, ay: integer);
    procedure Show; virtual; abstract;
    {Виртуальный - запускается при прогоне программы, абстрактный - родоначальник  для потомков}
  end;

implementation

constructor TFigure.Create(ax, ay: integer);
begin
  x := ax;
  y := ay;
end;

function TFigure.GetX: integer;
begin
  Result := x;
end;

function TFigure.GetY: integer;
begin
  Result := y;
end;

procedure TFigure.SetXY(ax, ay: integer);
begin
  x := ax;
  y := ay;
end;

procedure TFigure.MoveTo(ax, ay: integer);
begin
  Show;
  x := x + ax;
  y := y + ay;
  Show;
end;

end.
