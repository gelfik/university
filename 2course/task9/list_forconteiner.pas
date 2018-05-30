unit List_ForConteiner;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Figure;

type
  ListItem = class
  private
    Next: ListItem;
    Fig: TFigure;
  public
    constructor Create(aNext: ListItem; aFig: TFigure);
    function GetNext: ListItem;
    function GetFig: TFigure;
    procedure SetNext(aNext: ListItem);
    procedure SetFig(aFig: TFigure);
  end;

implementation

constructor ListItem.Create(aNext: ListItem; aFig: TFigure);
begin
  Fig := aFig;
  Next := aNext;
end;

function ListItem.GetNext: ListItem;
begin
  Result := Next;
end;

function ListItem.GetFig: TFigure;
begin
  Result := Fig;
end;

procedure ListItem.SetNext(aNext: ListItem);
begin
  Next := aNext;
end;

procedure ListItem.SetFig(aFig: TFigure);
begin
  Fig := aFig;
end;

end.
