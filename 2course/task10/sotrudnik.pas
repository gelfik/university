unit Sotrudnik;

interface

uses
  Classes, SysUtils;

type
  TSotr = class {Класс обычного сотрудника}
  protected
    fam, dolg: string;
  public
    constructor Create(aFam, aDolg: string);
    function Zarplata: real; virtual; abstract; {Виртуальный - запускается при прогоне программы,
    абстрактный - не имеет реализации в этом классе, но имеет в дочерних}
    function Get_Fam: string;
  end;

implementation

constructor TSotr.Create(aFam, aDolg: string); {Создание сотрудника}
begin
  fam := aFam;
  dolg := aDolg;
end;

function TSotr.Get_Fam: string; {Получение фамилии сотрудника}
begin
  Result := fam;
end;

end.
