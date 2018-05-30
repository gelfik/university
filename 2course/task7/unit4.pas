unit Unit4;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Unit5, Unit2;

type
  TEllipse = class(TCircle) {Класс элипс, наследует класс TCircle}
  protected
    r2: integer;
  public
    constructor Create(ax, ay, ar1, ar2: integer);
    function GetR2: integer;
    procedure SetR2(ar2: integer);
    procedure Turn;
    procedure Show; override;
    {Переопределяемый метод прорисовки}
  end;

implementation

uses unit1;

constructor TEllipse.Create(ax, ay, ar1, ar2: integer); {Создаем элипс}
begin
  inherited Create(ax, ay, ar1);
  {Вызов процедуры из класса фигур}
  r2 := ar2;
end;

function TEllipse.GetR2: integer; {Получаем радиус}
begin
  Result := r2;
end;

procedure TEllipse.SetR2(ar2: integer); {Установка радиуса}
begin
  r2 := ar2;
end;

procedure TEllipse.Turn; {Поворот элипса}
var
  temp: integer;
begin
  Show;
  temp := r1;
  r1 := r2;
  r2 := temp;
  Show;
end;

procedure TEllipse.Show; {Просмотр элипса}
begin
  Form1.Image1.Canvas.Ellipse(x - r1, y - r2, x + r1, y + r2);
end;

end.
