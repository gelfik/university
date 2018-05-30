unit Figure;

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
    procedure MoveTo(ax, ay: integer);
  end;

implementation

constructor TFigure.Create(ax, ay: integer);
begin
  x := ax;
  y := ay;
end;

procedure TFigure.MoveTo(ax, ay: integer);
begin
  Show;
  x := x + ax;
  y := y + ay;
  Show;
end;

end.
