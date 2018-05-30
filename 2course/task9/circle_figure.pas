unit Circle_Figure;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Math, Figure;

type
  TCircle = class(TFigure)
  protected
    r: integer;
  public
    constructor Create(ax, ay: integer);
    procedure Show; override;
  end;


implementation

uses unit1;

constructor TCircle.Create(ax, ay: integer);
begin
  inherited Create(ax, ay);
  r := randomrange(50, 100);
end;

procedure TCircle.Show;
begin
  form1.image1.canvas.ellipse(x - r, y - r, x + r, y + r);
end;

end.
