unit Unit2;

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
    procedure Show; virtual; abstract;
    {Виртуальный - запускается при прогоне программы, абстрактный - родоначальник  для потомков}
    procedure MoveTo(ax, ay: integer);
  end;

implementation

constructor TFigure.Create(ax, ay: integer); {Создание фигуры}
begin
  x := ax;
  y := ay;
end;

procedure TFigure.MoveTo(ax, ay: integer); {Перемещение фигуры}
begin
  Show;
  x := x + ax;
  y := y + ay;
  Show;
end;

end.
