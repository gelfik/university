unit SotrudnikPochas;

interface

uses
  Classes, SysUtils, Sotrudnik;

type
  TSotrPochas = class(TSotr) {Класс сотрудника-почасовика, наследует класс TSotr}
  protected
    OtrabChas, ChasStavka: integer;
  public
    constructor Create(aFam, aDolg: string; aOtrChas, aChasSt: integer);
    function Zarplata: real; override;
  end;

implementation

constructor TSotrPochas.Create(aFam, aDolg: string; aOtrChas, aChasSt: integer); {Создание сотрудника-почасовика}
begin
  inherited Create(aFam, aDolg); {Вызов процедуры из класса TSotr}
  OtrabChas := aOtrChas;
  ChasStavka := aChasSt;
end;

function TSotrPochas.Zarplata: real; {Метод подсчета зарплаты}
begin
  Result := OtrabChas * ChasStavka;
end;

end.
