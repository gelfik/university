unit Conteiner;

interface

uses
  Classes, SysUtils, Figure, List_ForConteiner;

type
  TCircCont = class {Класс контейнера фигур на списка}
  private {Используем только в этом классе}
    First: ListItem;
  public
    constructor Create;
    function GetFirst: ListItem;
    procedure add(aFig: TFigure);
    function Delete: ListItem;
    procedure ShowAll;
    procedure MoveAll(dx, dy: integer);
  end;

implementation

constructor TCircCont.Create; {Создание контейнера}
begin
  First := nil;
end;

procedure TCircCont.add(aFig: TFigure); {Добавление фигуры в контейнер}
begin
  First := listitem.Create(First, aFig);
end;

function TCircCont.Delete: ListItem; {Удаление фигуры из контейнера}
var
  Temp, pTemp: ListItem;
begin
  Temp := First;
  pTemp := First;
  if temp = nil then
    exit;
  if temp.GetNext = nil then
    First := nil;
  while Temp.GetNext <> nil do
  begin
    ptemp := Temp;
    Temp := Temp.GetNext;
  end;
  ptemp.SetNext(nil);
end;

function TCircCont.GetFirst: ListItem; {Получение первого элемента списка}
begin
  Result := First;
end;

procedure TCircCont.ShowAll; {Просмотр элементов контейнера}
var
  Temp: ListItem;
begin
  Temp := First;
  while (Temp <> nil) do
  begin
    Temp.GetFig.Show;
    Temp := Temp.GetNext;
  end;
end;

procedure TCircCont.MoveAll(dx, dy: integer); {Перемещение элементов контейнера}
var
  Temp: ListItem;
begin
  Temp := First;
  while (Temp <> nil) do
  begin
    Temp.GetFig.MoveTo(dx, dy);
    Temp := Temp.GetNext;
  end;
end;

end.
