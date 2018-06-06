unit Rectangle_Figure;

interface

uses
  Classes, SysUtils, Math, Figure;

type
  TRectangle = class(TFigure)
  private
    r, h: integer;
  public
    constructor Create(ax, ay: integer);
    procedure Show; override;
  end;

implementation

uses unit1;

constructor TRectangle.Create(ax, ay: integer);
begin
  inherited Create(ax, ay);
  r := randomrange(50, 100);
  h := randomrange(50, 150);
end;

procedure TRectangle.Show;
begin
  form1.image1.canvas.Rectangle(x, y, x + r, y + h);
end;

end.
