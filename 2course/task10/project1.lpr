program project1;

{$mode objfpc}{$H+}

uses {$IFDEF UNIX} {$IFDEF UseCThreads}
  cthreads, {$ENDIF} {$ENDIF}
  Classes,
  SysUtils,
  CustApp,
  Container,
  Sotrudnik,
  SotrudnikOklad,
  SotrudnikPochas;

type
  TMyApplication = class(TCustomApplication)
  protected
    procedure DoRun; override;
  end;

var
  sotr: TSotr;
  cont: TCont;

  answer: char;

  fam1, dolg1: string;

  oklad: integer;
  stavka: real;

  stavkah, hours: integer;

  procedure TMyApplication.DoRun;
  begin
    repeat
      writeln('1 - Создание контейнера');
      writeln('2 - Добавление сотрудника-окладника');
      writeln('3 - Добавление сотрудника-почасовика');
      writeln('4 - Удаление сотрудника');
      writeln('5 - Вывода списка сотрудников и зарплат');
      writeln;
      writeln('00 - Выход');
      writeln;
      write('Ваш выбор: ');
      readln(answer);
      writeln;
      case answer of

        '1':
        begin
          cont := TCont.Create;
          writeln(' Контейнер создан!');
          writeln;
        end;

        '2':
        begin
          Write(' Введите фамилию: ');
          readln(fam1);
          Write(' Введите должность: ');
          readln(dolg1);
          Write(' Введите оклад: ');
          readln(oklad);
          Write(' Введите ставку: ');
          readln(stavka);
          sotr := TSotrOklad.Create(fam1, dolg1, oklad, stavka);
          cont.AddSotr(sotr);
          writeln;
        end;

        '3':
        begin
          Write(' Введите фамилию: ');
          readln(fam1);
          Write(' Введите должность: ');
          readln(dolg1);
          Write(' Введите отработанное время: ');
          readln(hours);
          Write(' Введите ставку: ');
          readln(stavkah);
          sotr := TSotrPochas.Create(fam1, dolg1, hours, stavkah);
          cont.AddSotr(sotr);
          writeln;
        end;

        '4':
        begin
          Write(' Введите фамилию: ');
          readln(fam1);
          if cont.DeleteSotr(fam1) = True then
            writeln(' Сотрудник удален!')
          else
            writeln(' Сотрудник не найден!');
          writeln;
        end;

        '5':
        begin
          cont.Vedomost;
          writeln;
        end;
      end;
    until answer = '00';
  end;

var
  Application: TMyApplication;
begin
  Application := TMyApplication.Create(nil);
  Application.Run;
  Application.Free;
end.
