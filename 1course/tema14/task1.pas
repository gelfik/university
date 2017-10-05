program tema14task1;
const n=100;
type sotrudnik=record
          fio:string[50];
          data:integer;
          ok:integer;
          dol:string[100];
        end;
var
  x,i:integer;
  z:char;
  nomer:integer;
  sot:array [1..n] of sotrudnik;
begin
  repeat
    writeln('1 - Ввод информации о сотрудниках.');
    writeln('2 - Вывод информации о сотрудниках.');
    writeln('3 - Вывод информации по личному номеру.');
    writeln('4 - Выход.');
    write('Ваш выбор: ');
    readln(x);
    case x of
     1:begin
       writeln;
       for i:=1 to n do begin
         writeln('Введите информацию о ',i,' сотруднике.');
         writeln('Введите Фамилию.');
         write('   ');
         readln(sot[i].fio);
         writeln('Введите дату поступления.');
         write('   ');
         readln(sot[i].data);
         writeln('Введите оклад.');
         write('   ');
         readln(sot[i].ok);
         writeln('Введите должность.');
         write('   ');
         readln(sot[i].dol);
         writeln;
       end;
     end;
     2:begin
       writeln;
       for i:=1 to n do writeln('Номер сотрудника: ',i,'. Фамилия: ',sot[i].fio,'. Дата поступления: ',sot[i].data,'. Оклад: ',sot[i].ok,'. Должность: ',sot[i].dol,'.');
       writeln;
     end;
     3:begin
         repeat
           writeln;
           write('Введите порядковый номер: ');
           readln(nomer);
           i:=nomer;
           writeln('Номер сотрудника: ',i,'. Фамилия: ',sot[i].fio,'. Дата поступления: ',sot[i].data,'. Оклад: ',sot[i].ok,'. Должность: ',sot[i].dol,'.');
           writeln;
           write('Хотите продолжить поиск по номеру(y/n)? Ваш выбор: ');
           writeln;
           readln(z);
         until z='n';
       end;
    end;
  until x=4;
end.
