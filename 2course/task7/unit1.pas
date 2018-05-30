unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  ExtCtrls, Math, Unit2, Unit3, Unit4, Unit5;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image1: TImage;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem3: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    MenuItem2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N7Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

var
  MyCircl: TCircle;
  MyEllips: TEllipse;
  MyRectanglel: TRectangle;

procedure TForm1.FormCreate(Sender: TObject);
begin
  Image1.Canvas.Pen.Mode := pmNotXOR;
end;

procedure TForm1.N3Click(Sender: TObject); {Создаем круг}
var
  x, y, r: integer;
begin
  randomize;
  x := Random(200);
  y := Random(100);
  r := Random(40);
  MyCircl := TCircle.Create(x, y, r);
  MyCircl.Show;
end;

procedure TForm1.N4Click(Sender: TObject); {Перемещаем круг}
begin
  randomize;
  MyCircl.MoveTo(randomrange(50, 100), randomrange(50, 100));
end;

procedure TForm1.N5Click(Sender: TObject); {Удаляем круг}
begin
  MyCircl.Show;
  MyCircl.Free;
end;

procedure TForm1.N11Click(Sender: TObject); {Создание элипса}
var
  x, y, r: integer;
begin
  randomize;
  x := Random(200);
  y := Randomrange(20, 50);
  r := Randomrange(50, 100);
  MyEllips := TEllipse.Create(x, x, y, r);
  MyEllips.Show;
end;

procedure TForm1.N12Click(Sender: TObject); {Перемещение элипса}
begin
  MyEllips.MoveTo(randomrange(50, 100), randomrange(50, 100));
end;

procedure TForm1.N13Click(Sender: TObject); {Поворот элипса}
begin
  MyEllips.Turn;
end;

procedure TForm1.N14Click(Sender: TObject); {Удаление элипса}
begin
  MyEllips.Show;
  MyEllips.Free;
end;

procedure TForm1.N6Click(Sender: TObject); {Создаем прямоугольник}
begin
  MyRectanglel := TRectangle.Create(Random(150), Random(150),
    Random(100), Random(100));
  MyRectanglel.Show;
end;

procedure TForm1.N8Click(Sender: TObject);
{Поворачиваем прямоугольник}
begin
  MyRectanglel.Turn;
end;

procedure TForm1.N7Click(Sender: TObject);
{Перемещаем прямоугольник}
begin
  MyRectanglel.MoveTo(randomrange(50, 100), randomrange(50, 100));
end;

procedure TForm1.N9Click(Sender: TObject);
{Удаление прямоугольника}
begin
  MyRectanglel.Show;
  MyRectanglel.Free;
end;

procedure TForm1.N15Click(Sender: TObject); {Закрытие программы}
begin
  Close;
end;

procedure TForm1.MenuItem3Click(Sender: TObject);
{Очищение всех значений}
begin
  MyRectanglel := nil;
  MyEllips := nil;
  MyCircl := nil;
  Image1.Picture := nil;
  Image1.Canvas.Pen.Mode := pmNotXOR;
end;

end.
