unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  ExtCtrls, Buttons, StdCtrls, Unit2, Unit3, Unit4, Unit5, Unit6, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button_CreateKont_Clear: TButton;
    Button_CreateKont_Full: TButton;
    Image1: TImage;
    MainMenu1: TMainMenu;
    MenuKont: TMenuItem;
    MenuKontAdd: TMenuItem;
    MenuKontDel: TMenuItem;
    MenuKontMove: TMenuItem;
    MenuKontDel_Kont: TMenuItem;
    MenuClose: TMenuItem;
    procedure Button_CreateKont_ClearClick(Sender: TObject);
    procedure Button_CreateKont_FullClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure MenuKontAddClick(Sender: TObject);
    procedure MenuKontDelClick(Sender: TObject);
    procedure MenuKontMoveClick(Sender: TObject);
    procedure MenuKontDel_KontClick(Sender: TObject);
    procedure MenuCloseClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  circ1: TCircle;
  rect: TRectangle;
  ell: TEllipse;
  kont: TArrayCircleContainer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  image1.canvas.Pen.Mode := pmNotXOR;
end;

procedure TForm1.Button_CreateKont_ClearClick(Sender: TObject); {Создание пкстого контейнера}
begin
  if kont <> nil then
    kont.ShowAll;
  kont := TArrayCircleContainer.Create;
  ShowMessage('Контейнер создан!');
end;

procedure TForm1.Button_CreateKont_FullClick(Sender: TObject); {Создание и заполнение контейнера с помощью рандома до 100 элементов}
var
  i, res: integer;
begin
  randomize;
  if kont <> nil then
    kont.ShowAll;
  kont := TArrayCircleContainer.Create;
  for i := 1 to random(100) do
  begin
    res := random(4);
    if res = 1 then
    begin
      kont.ShowAll;
      circ1 := TCircle.Create(randomrange(200, 300), randomrange(100, 300));
      kont.add(circ1);
      kont.ShowAll;
    end;
    if res = 2 then
    begin
      kont.ShowAll;
      rect := TRectangle.Create(randomrange(200, 300), randomrange(100, 300));
      kont.add(rect);
      kont.ShowAll;
    end;
    if res = 3 then
    begin
      kont.ShowAll;
      ell := TEllipse.Create(randomrange(200, 300), randomrange(100, 300),
        randomrange(100, 200), randomrange(10, 100));
      kont.add(ell);
      kont.ShowAll;
    end;
  end;
  ShowMessage('Контейнер создан!');
end;

procedure TForm1.MenuKontAddClick(Sender: TObject); {Добавление рандомной фигуры в контейнер}
var
  res: integer;
begin
  if kont = nil then
    ShowMessage('Создайте контейнер')
  else
  begin
    res := 0;
    while res = 0 do
      res := random(4);

    if res = 1 then
    begin
      kont.ShowAll;
      circ1 := TCircle.Create(randomrange(200, 300), randomrange(100, 300));
      kont.add(circ1);
      kont.ShowAll;
    end;
    if res = 2 then
    begin
      kont.ShowAll;
      rect := TRectangle.Create(randomrange(200, 300), randomrange(100, 300));
      kont.add(rect);
      kont.ShowAll;
    end;
    if res = 3 then
    begin
      kont.ShowAll;
      ell := TEllipse.Create(randomrange(200, 300), randomrange(100, 300),
        randomrange(100, 200), randomrange(10, 100));
      kont.add(ell);
      kont.ShowAll;
    end;
  end;
end;

procedure TForm1.MenuKontDelClick(Sender: TObject); {Удаление последней созданной фигуры}
begin
  if kont = nil then
    exit;
  kont.ShowAll;
  kont.Delete(kont.GetCount);
  kont.ShowAll;
end;

procedure TForm1.MenuKontMoveClick(Sender: TObject); {Перемещение контейнера со всеми его элементами}
begin
  if kont = nil then
    exit;
  kont.MoveaLL(RandomRange(-100, 100), RandomRange(-100, 100));
end;

procedure TForm1.MenuKontDel_KontClick(Sender: TObject); {Удаление контейнера со всеми элементами}
var
  i: integer;
begin
  if kont = nil then
    ShowMessage('Создайте контейнер')
  else
  begin
    kont.ShowAll;
    for i := 1 to kont.GetCount do
      kont.Delete(i);
    kont.Free;
    kont := nil;
    ShowMessage('Контейнер уничтожен!');
  end;
end;

procedure TForm1.MenuCloseClick(Sender: TObject); {Закрытие программы}
begin
  Close;
end;

end.
