unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Unit5;

type
  TRectangle = class(TFigure)
    {Класс прямоуголник, наследует класс TFigure}
  protected
    h, w: integer;
  public
    constructor Create(ax, ay, ah, aw: integer);
    function GetH: integer;
    function GetW: integer;
    procedure SetHW(ah, aw: integer);
    procedure MoveTo(ax, ay: integer);
    procedure Turn;
    procedure Show;
  end;

implementation

uses Unit1;

constructor TRectangle.Create(ax, ay, ah, aw: integer);
  {Создаем прямоугольник}
begin
  inherited Create(ax, ay); {Вызов процедуры из класса фигур}
  h := ah;
  w := aw;
end;

function TRectangle.GetH: integer; {Получаем высоту}
begin
  Result := h;
end;

function TRectangle.GetW: integer; {Получаем ширину}
begin
  Result := w;
end;

procedure TRectangle.SetHW(ah, aw: integer);
{Установка высоты и ширины}
begin
  h := ah;
  w := aw;
end;

procedure TRectangle.MoveTo(ax, ay: integer);
{Перемещенz прямоуголника}
begin
  Show;
  x := x + ax;
  y := y + ay;
  Show;
end;

procedure TRectangle.Turn; {Поворот прямоуголника}
var
  temp: integer;
begin
  Show;
  temp := h;
  h := w;
  w := temp;
  Show;
end;

procedure TRectangle.Show; {Просмотр прямоугольника}
begin
  Form1.Image1.Canvas.Rectangle(x, y, x + w, y + h);
end;


end.
