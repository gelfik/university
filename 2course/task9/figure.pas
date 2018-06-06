unit Figure;

interface

uses
  Classes, SysUtils;

type
  TFigure = class
  protected {Можем использовть в дочерних классах}
    x, y: integer;
  public
    constructor Create(ax, ay: integer);
    procedure Show; virtual; abstract;
    {Виртуальный - запускается при прогоне программы,
    абстрактный - не имеет реализации в этом классе, но имеет в дочерних}
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
