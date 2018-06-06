unit Unit1;

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  ExtCtrls, Buttons, StdCtrls, Circle_Figure, Rectangle_Figure,
  Ellipse_Circle, Conteiner, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    Image1: TImage;
    MenuCreateKont: TMenuItem;
    MenuMy: TMainMenu;
    MenuEditKont: TMenuItem;
    MenuEditKont_Add: TMenuItem;
    MenuEditKont_Del: TMenuItem;
    MenuEditKont_Move: TMenuItem;
    MenuEditKont_DelKont: TMenuItem;
    MenuClear: TMenuItem;
    MenuCreateKont_Clear: TMenuItem;
    MenuClose: TMenuItem;
    MenuCreateKont_Full: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure MenuClearClick(Sender: TObject);
    procedure MenuCreateKont_ClearClick(Sender: TObject);
    procedure MenuCreateKont_FullClick(Sender: TObject);
    procedure MenuEditKont_AddClick(Sender: TObject);
    procedure MenuEditKont_DelClick(Sender: TObject);
    procedure MenuEditKont_MoveClick(Sender: TObject);
    procedure MenuEditKont_DelKontClick(Sender: TObject);
    procedure MenuCloseClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  MyCircl: TCircle;
  MyRectanglel: TRectangle;
  MyEllips: TEllipse;
  MyConteiner: TCircCont;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  image1.canvas.Pen.Mode := pmNotXOR;
end;

procedure TForm1.MenuCreateKont_ClearClick(Sender: TObject); {Создание пустого контейнера}
begin
  if MyConteiner <> nil then
    MyConteiner.ShowAll;
  MyConteiner := TCircCont.Create;
  ShowMessage('Контейнер создан!');
end;

procedure TForm1.MenuCreateKont_FullClick(Sender: TObject); {Создание полного контейнера}
var
  i, res: integer;
begin
  randomize;
  if MyConteiner <> nil then
    MyConteiner.ShowAll;
  MyConteiner := TCircCont.Create;
  for i := 1 to 100 do //Если заполненый, а можно random(100)
  begin
    res := random(4);
    if res = 1 then
    begin
      MyConteiner.ShowAll;
      MyCircl := TCircle.Create(randomrange(200, 300), randomrange(100, 300));
      MyConteiner.add(MyCircl);
      MyConteiner.ShowAll;
    end;
    if res = 2 then
    begin
      MyConteiner.ShowAll;
      MyRectanglel := TRectangle.Create(randomrange(200, 300), randomrange(100, 300));
      MyConteiner.add(MyRectanglel);
      MyConteiner.ShowAll;
    end;
    if res = 3 then
    begin
      MyConteiner.ShowAll;
      MyEllips := TEllipse.Create(randomrange(200, 300), randomrange(100, 300),
        randomrange(100, 200), randomrange(10, 100));
      MyConteiner.add(MyEllips);
      MyConteiner.ShowAll;
    end;
  end;
  ShowMessage('Контейнер создан!');
end;

procedure TForm1.MenuEditKont_AddClick(Sender: TObject); {Добавление фигуры в контейнер}
var
  res: integer;
begin
  if MyConteiner = nil then
    ShowMessage('Создайте контейнер')
  else
  begin
    res := 0;
    while res = 0 do
      res := random(4);

    if res = 1 then
    begin
      MyConteiner.ShowAll;
      MyCircl := TCircle.Create(randomrange(200, 300), randomrange(100, 300));
      MyConteiner.add(MyCircl);
      MyConteiner.ShowAll;
    end;
    if res = 2 then
    begin
      MyConteiner.ShowAll;
      MyRectanglel := TRectangle.Create(randomrange(200, 300), randomrange(100, 300));
      MyConteiner.add(MyRectanglel);
      MyConteiner.ShowAll;
    end;
    if res = 3 then
    begin
      MyConteiner.ShowAll;
      MyEllips := TEllipse.Create(randomrange(200, 300), randomrange(100, 300),
        randomrange(100, 200), randomrange(10, 100));
      MyConteiner.add(MyEllips);
      MyConteiner.ShowAll;
    end;
  end;
end;

procedure TForm1.MenuEditKont_DelClick(Sender: TObject); {Удаление фигуры из контейнера}
begin
  if MyConteiner = nil then
    exit;
  MyConteiner.ShowAll;
  MyConteiner.Delete;
  MyConteiner.ShowAll;
end;

procedure TForm1.MenuEditKont_MoveClick(Sender: TObject);
begin
  if MyConteiner = nil then
    exit;
  MyConteiner.MoveaLL(RandomRange(-100, 100), RandomRange(-100, 100));
end;

procedure TForm1.MenuEditKont_DelKontClick(Sender: TObject); {Удаление контейнера}
begin
  if MyConteiner = nil then
    ShowMessage('Создайте контейнер')
  else
  begin
    MyConteiner.ShowAll;
    MyConteiner.Free;
    MyConteiner := nil;
    ShowMessage('Контейнер уничтожен!');
  end;
end;

procedure TForm1.MenuClearClick(Sender: TObject); {Очистка и обнуление всех переменных}
begin
  MyRectanglel := nil;
  MyEllips := nil;
  MyCircl := nil;
  MyConteiner := nil;
  Image1.Picture := nil;
  Image1.Canvas.Pen.Mode := pmNotXOR;
  ShowMessage('Поле очищено, контейнер уничтожен!');
end;

procedure TForm1.MenuCloseClick(Sender: TObject); {Закрытие программы}
begin
  Close;
end;

end.
