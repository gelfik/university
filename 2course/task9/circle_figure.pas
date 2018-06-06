unit Circle_Figure;

interface

uses
  Classes, SysUtils, Math, Figure;

type
  TCircle = class(TFigure) {Класс круг, наследует класс TFigure}
  protected {Можем использовть в дочерних классах}
    r: integer;
  public
    constructor Create(ax, ay: integer);
    procedure Show; override;
  end;


implementation

uses unit1;

constructor TCircle.Create(ax, ay: integer); {Создание круга}
begin
  inherited Create(ax, ay); {Вызов процедуры из класса фигур}
  r := randomrange(50, 100);
end;

procedure TCircle.Show; {Просмотр круга}
begin
  form1.image1.canvas.ellipse(x - r, y - r, x + r, y + r);
end;

end.
