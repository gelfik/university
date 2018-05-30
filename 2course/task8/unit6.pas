unit Unit6;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Unit2;

type
  TArrayCircleContainer = class
    {Класс контейнера фигур на основе массива}
  private
    Figs: array[1..100] of TFigure;
    Count: integer;
  public
    constructor Create;
    function GetCount: integer;
    function add(aFig: TFigure): boolean;
    function Delete(ai: integer): TFigure;
    procedure ShowAll;
    procedure MoveAll(dx, dy: integer);
  end;

implementation

constructor TArrayCircleContainer.Create; {Создание контейнера}
var
  i: integer;
begin
  for i := 1 to 100 do
    Figs[i] := nil;
  Count := 0;
end;


function TArrayCircleContainer.add(aFig: TFigure): boolean;
  {Добавление фигуры в контейнер}
begin
  Result := False;
  if Count < 100 then
  begin
    Count := Count + 1;
    Figs[Count] := aFig;
    Result := True;
  end;
end;

function TArrayCircleContainer.Delete(ai: integer): TFigure;
  {Удаление фигуры из контейнера}
begin
  Result := nil;
  if (Count > 0) and (ai <= Count) then
  begin
    Result := Figs[ai];
    Count := Count - 1;
  end;
end;

function TArrayCircleContainer.GetCount: integer;
  {Вывод колличества элементов в контейнере}
begin
  Result := Count;
end;

procedure TArrayCircleContainer.ShowAll;
{Просмотр элементов контейнера}
var
  i: integer;
begin
  for i := 1 to GetCount do
    Figs[i].Show;
end;

procedure TArrayCircleContainer.MoveAll(dx, dy: integer);
{Перемещение элементов контейнера}
var
  i: integer;
begin
  for i := 1 to GetCount do
    Figs[i].MoveTo(dx, dy);
end;


end.
