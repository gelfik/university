unit Container;

interface

uses
  Classes, SysUtils, Sotrudnik;

type
  TCont = class {Класс контейнера фигур на основе массива}
  private
    Sotr: array [1..10] of TSotr;
    Count: integer;
  public
    constructor Create;
    function Get_Zarp(nom: integer): real;
    function DeleteSotr(aFam: string): boolean;
    procedure AddSotr(aSotr: TSotr);
    procedure Stat;
  end;

implementation

constructor TCont.Create; {Создание контейнера}
var
  i: integer;
begin
  Count := 0;
  for i := 1 to 10 do
    Sotr[i] := nil;
end;

procedure TCont.AddSotr(aSotr: TSotr); {Добавление сотрудника в контейнер}
begin
  Count := Count + 1;
  Sotr[Count] := aSotr;
end;

function TCont.DeleteSotr(aFam: string): boolean; {Удаление сотрудника из контейнера}
var
  i: integer;
begin
  Result := False;
  for i := 1 to 10 do
  begin
    if (Sotr[i] <> nil) and (Sotr[i].Get_Fam = aFam) then
    begin
      Sotr[i] := nil;
      Count := Count - 1;
      Result := True;
    end;
  end;
end;

function TCont.Get_Zarp(nom: integer): real; {Метод получения зарплаты}
begin
  if Sotr[nom] = nil then
    Result := 0
  else
    Result := Sotr[nom].Zarplata;
end;

procedure TCont.Stat; {Метод получения ведомости}
var
  i: integer;
  sum: real;
begin
  sum := 0;
  for i := 1 to 10 do
  begin
    if Sotr[i] <> nil then
    begin
      sum := sum + Sotr[i].Zarplata;
      writeln(Sotr[i].Get_Fam, '--', Sotr[i].Zarplata: 4: 2);
    end;
  end;
  writeln('Всего: ', sum: 4: 2);
end;

end.
