unit List_ForConteiner;

interface

uses
  Classes, SysUtils, Figure;

type
  ListItem = class {Класс реализации списка}
  private {Используем только в этом классе}
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

constructor ListItem.Create(aNext: ListItem; aFig: TFigure); {Создание списка}
begin
  Fig := aFig;
  Next := aNext;
end;

function ListItem.GetNext: ListItem; {Метод получения следующего элемента}
begin
  Result := Next;
end;

function ListItem.GetFig: TFigure; {Метод получения фигуры}
begin
  Result := Fig;
end;

procedure ListItem.SetNext(aNext: ListItem); {Метод установки следующего элемента}
begin
  Next := aNext;
end;

procedure ListItem.SetFig(aFig: TFigure); {Метод установки фигуры}
begin
  Fig := aFig;
end;

end.
