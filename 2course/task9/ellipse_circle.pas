unit Ellipse_Circle;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Circle_Figure;

type
  TEllipse = class(TCircle)
  protected
    r2: integer;
  public
    constructor Create(ax, ay, ar, ar2: integer);
    procedure Show; override;
    procedure Turn;
  end;

implementation

uses unit1;

constructor TEllipse.Create(ax, ay, ar, ar2: integer);
begin
  inherited Create(ax, ay);
  r := ar;
  r2 := ar2;
end;

procedure TEllipse.Show;
begin
  form1.image1.canvas.ellipse(x - r, y - r2, x + r, y + r2);
end;

procedure TEllipse.Turn;
begin
  Show;
  if r > r2 then
  begin
    r := r - 90;
    r2 := r2 + 90;
  end
  else
  begin
    r := r + 90;
    r2 := r2 - 90;
  end;
  TEllipse.Create(x, y, r, r2);
  Show;
end;

end.
