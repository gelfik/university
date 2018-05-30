unit Conteiner;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Figure, List_ForConteiner;

type
  TCircCont = class
  private
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

constructor TCircCont.Create;
begin
  First := nil;
end;

procedure TCircCont.add(aFig: TFigure);
begin
  First := listitem.Create(First, aFig);
end;

function TCircCont.Delete: ListItem;
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

function TCircCont.GetFirst: ListItem;
begin
  Result := First;
end;

procedure TCircCont.ShowAll;
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

procedure TCircCont.MoveAll(dx, dy: integer);
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
