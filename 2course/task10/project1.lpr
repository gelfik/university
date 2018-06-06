program project1;

uses
  Classes,
  Container,
  Sotrudnik,
  SotrudnikOklad,
  SotrudnikPochas;

var
  sotr: TSotr;
  cont: TCont;

  answer: char;

  fam, dolg: string;

  oklad: integer;
  stavka: real;

  stavkah, hours: integer;

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
    Write('Ваш выбор: ');
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
        readln(fam);
        Write(' Введите должность: ');
        readln(dolg);
        Write(' Введите оклад: ');
        readln(oklad);
        Write(' Введите ставку: ');
        readln(stavka);
        sotr := TSotrOklad.Create(fam, dolg, oklad, stavka);
        cont.AddSotr(sotr);
        writeln;
      end;

      '3':
      begin
        Write(' Введите фамилию: ');
        readln(fam);
        Write(' Введите должность: ');
        readln(dolg);
        Write(' Введите отработанное время: ');
        readln(hours);
        Write(' Введите ставку: ');
        readln(stavkah);
        sotr := TSotrPochas.Create(fam, dolg, hours, stavkah);
        cont.AddSotr(sotr);
        writeln;
      end;

      '4':
      begin
        Write(' Введите фамилию: ');
        readln(fam);
        if cont.DeleteSotr(fam) = True then
          writeln(' Сотрудник удален!')
        else
          writeln(' Сотрудник не найден!');
        writeln;
      end;

      '5':
      begin
        cont.Stat;
        writeln;
      end;
    end;
  until answer = '00';
end.
