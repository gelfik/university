unit Unit2;

{$mode objfpc}{$H+}

interface

uses Classes, SysUtils, Dialogs, Unit5;

type
  TCircle = class(TFigure) {Класс круг, наследует класс TFigure}
  protected
    r1: integer;
  public
    constructor Create(ax, ay, ar: integer);
    function GetR: integer;
    procedure SetR(ar: integer);
    procedure Show; override;
    {Переопределяемый метод прорисовки}
  end;

implementation

uses Unit1;

constructor TCircle.Create(ax, ay, ar: integer); {Создаем круг}
begin
  inherited Create(ax, ay); {Вызов процедуры из класса фигур}
  r1 := ar;
end;

function TCircle.GetR: integer; {Получаем радиус}
begin
  Result := r1;
end;

procedure TCircle.SetR(ar: integer); {Устанавливаем радиус}
begin
  r1 := ar;
end;

procedure TCircle.Show; {Просмотр круга}
begin
  Form1.Image1.Canvas.Ellipse(x - r1, y - r1, x + r1, y + r1);
end;

end.
