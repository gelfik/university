unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  TFigure = class {Класс фигур}
  protected
    x, y: integer;
  public
    constructor Create(ax, ay: integer);
    function GetX: integer;
    function GetY: integer;
    procedure SetXY(ax, ay: integer);
    procedure MoveTo(ax, ay: integer); virtual; abstract;
    {Виртуальный - запускается при прогоне программы, абстрактный - родоначальник  для потомков}
    procedure Show; virtual; abstract;
    {Виртуальный - запускается при прогоне программы, абстрактный - родоначальник  для потомков}
  end;

implementation

constructor TFigure.Create(ax, ay: integer); {Создаем фигуру}
begin
  x := ax;
  y := ay;
end;

function TFigure.GetX: integer; {Получаем X}
begin
  Result := x;
end;

function TFigure.GetY: integer; {Получаем Y}
begin
  Result := y;
end;

procedure TFigure.SetXY(ax, ay: integer); {Установка X и Y}
begin
  x := ax;
  y := ay;
end;

end.
