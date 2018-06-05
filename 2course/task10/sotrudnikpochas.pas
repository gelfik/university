unit SotrudnikPochas;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Sotrudnik;

type
  TSotrPochas = class(TSotr)
  protected
    OtrabChas, ChasStavka: integer;
  public
    constructor Create(aFam, aDolg: string; aOtrChas, aChasSt: integer);
    function Zarplata: real; override;
  end;

implementation

constructor TSotrPochas.Create(aFam, aDolg: string; aOtrChas, aChasSt: integer);
begin
  inherited Create(aFam, aDolg);
  OtrabChas := aOtrChas;
  ChasStavka := aChasSt;
end;

function TSotrPochas.Zarplata: real;
begin
  Result := OtrabChas * ChasStavka;
end;

end.
