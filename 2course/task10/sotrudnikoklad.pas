unit SotrudnikOklad;

interface

uses
  Classes, SysUtils, Sotrudnik;

type
  TSotrOklad = class(TSotr) {Класс сотрудника-окладчика, наследует класс TSotr}
  protected
    oklad: integer;
    stavka: real;
  public
    constructor Create(aFam, aDolg: string; aOklad: integer; aStavka: real);
    function Zarplata: real; override;
  end;

implementation

constructor TSotrOklad.Create(aFam, aDolg: string; aOklad: integer; aStavka: real); {Создание сотрудника-окладчика}
begin
  inherited Create(aFam, aDolg); {Вызов процедуры из класса TSotr}
  oklad := aOklad;
  stavka := aStavka;
end;

function TSotrOklad.Zarplata: real; {Метод подсчета зарплаты}
begin
  Result := oklad * stavka;
end;

end.
