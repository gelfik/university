program project1;

const N = 10;

var mas: array [0..N] of integer;
  st, k, i, first, last: byte;
  otv: char;

procedure add_elem;
begin
    repeat
      writeln;
      i:=i+1;
      if (st=0) then writeln('Очередь пуста!');
        if (st=N) then writeln('Очередь заполнена!')
           else begin
             mas[i]:=random(100);
             st:=st+1;
             if last=n+1 then last:=1 else last:=last+1;
           end;
      write('Ваша очередь: ');for i:=1 to last do write(mas[i], ' ');writeln;
      write('      Хотите добавить еще один элемент? (y/n): ');readln(otv);
      until otv='n';
    writeln;
    end;

procedure del_elem;
begin
    repeat
      writeln;
        if (st=0) then writeln('Очередь пуста!')
           else begin
             st:=st-1;
             if first=n+1 then first:=1 else first:=first+1;
             mas[first]:=0;
           end;
      i:=i-1;
      write('Ваша очередь: ');for i:=1 to last do write(mas[i], ' ');writeln;
      write('      Хотите удалить еще один элемент? (y/n): ');readln(otv);
      until otv='n';
    writeln;
    end;

begin
  st:=0;i:=0;first:=1;last:=1;

  randomize;

  repeat
    writeln('Ваш выбор:');
    writeln('   1 - Добавить элемент.');
    writeln('   2 - Удалить элемент.');
    writeln('   3 - Выход');
    write('Ваш выбор: ');readln(k);
    case k of

      1:add_elem;

      2:del_elem;

    end;

  until k=3;

end.
