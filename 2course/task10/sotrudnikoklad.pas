unit SotrudnikOklad;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Sotrudnik;

type
  TSotrOklad = class(TSotr)
  protected
    oklad: integer;
    stavka: real;
  public
    constructor Create(aFam, aDolg: string; aOklad: integer; aStavka: real);
    function Zarplata: real; override;
  end;

implementation

constructor TSotrOklad.Create(aFam, aDolg: string; aOklad: integer; aStavka: real);
begin
  inherited Create(aFam, aDolg);
  oklad := aOklad;
  stavka := aStavka;
end;

function TSotrOklad.Zarplata: real;
begin
  Result := oklad * stavka;
end;

end.
