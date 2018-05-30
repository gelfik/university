unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Math, Unit2;

type
  TRectangle = class(TFigure)
    {Класс прямоуголник, наследует класс TFigure}
  private
    r, h: integer;
  public
    constructor Create(ax, ay: integer);
    procedure Show; override;
  end;

implementation

uses unit1;

constructor TRectangle.Create(ax, ay: integer);
  {Создание прямоугольника}
begin
  inherited Create(ax, ay); {Вызов процедуры из класса фигур}
  r := randomrange(50, 100);
  h := randomrange(50, 150);
end;

procedure TRectangle.Show; {Просмотр прямоугольника}

begin
  form1.image1.canvas.Rectangle(x, y, x + r, y + h);

end;

end.
