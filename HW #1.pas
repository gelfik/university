program Test;
const n=2;
type rabotnik=record
          fio:string;
          dol:string[100];
          pol:char;
        end;
var
  x,i,nomer:integer;
  p,z:char;
  rab:array [1..n] of rabotnik;
  f:text;
begin
  repeat
    writeln('1 - Ввод информации о сотрудниках.');
    writeln('2 - Вывод информации о сотрудниках.');
    writeln('3 - Сортировка по полу.');
    writeln('4 - Вывод информации по личному номеру.');
    writeln('5 - Выход.');
    write('Ваш выбор: ');
    readln(x);
    case x of
     1:begin
       writeln;
       for i:=1 to n do begin
         writeln('Введите информацию о ',i,' сотруднике.');
         writeln('Введите ФИО.');
         write('   ');
         readln(rab[i].fio);
         writeln('Введите должность.');
         write('   ');
         readln(rab[i].dol);
         writeln('Введите пол(м/ж).');
         write('   ');
         readln(rab[i].pol);
         writeln;
       end;
     end;
     2:begin
       writeln;
       for i:=1 to n do writeln('Номер сотрудника: ',i,'. ФИО: ',rab[i].fio,'. Должность: ',rab[i].dol,'. Пол: ',rab[i].pol,'.');
     end;
     3:begin
       repeat
         writeln;
         write('Введите пол(м/ж). Ваш выбор: ');
         readln(p);
         for i:=1 to n do if rab[i].pol=p then writeln('Номер сотрудника: ',i,'. ФИО: ',rab[i].fio,'. Должность: ',rab[i].dol,'. Пол: ',rab[i].pol,'.');
         writeln;
         write('Хотите продолжить сортировку по полу(y/n)? Ваш выбор: ');
         readln(z);
       until z='n';
     end;
     4:begin
         repeat
           writeln;
           write('Введите порядковый номер: ');
           readln(nomer);
           i:=nomer;
           writeln('Номер сотрудника: ',i,'. ФИО: ',rab[i].fio,'. Должность: ',rab[i].dol,'. Пол: ',rab[i].pol,'.');
           writeln;
           write('Хотите продолжить сортировку по полу(y/n)? Ваш выбор: ');
           readln(z);
         until z='n';
       end;
    end;
  until x=5;
end.
