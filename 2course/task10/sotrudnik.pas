unit Sotrudnik;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
  TSotr = class
  protected
    fam, dolg: string;
  public
    constructor Create(aFam, aDolg: string);
    function Zarplata: real; virtual; abstract;
    function Get_Fam: string;
  end;

implementation

constructor TSotr.Create(aFam, aDolg: string);
begin
  fam := aFam;
  dolg := aDolg;
end;

function TSotr.Get_Fam: string;
begin
  Result := fam;
end;

end.
