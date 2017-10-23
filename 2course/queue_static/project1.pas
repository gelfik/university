program project1;

const N = 10;

var mas: array [0..N] of integer;
  k, st, first, last: byte;

procedure add_elem;
var i: byte;
  otv: char;
begin
    repeat
      writeln;
      if (st > n) then writeln('Очередь переполнена!');
      if (st < n + 1) then
      begin
        mas[last] := random(100);
        writeln('Элемент [', mas[last], '] успешно добавлен.');
        inc(last);
        if (last > n) then last := 0;
        inc(st);
      end;
      write('Ваша очередь: ');for i:=first to last do write(mas[i], ' ');writeln;
      write('      Хотите добавить еще один элемент? (y/n): ');readln(otv);
      until otv='n';
    writeln;
    end;

procedure del_elem;
var i: byte;
  otv: char;
begin
    repeat
      writeln;
        if (st = 0) then writeln('Удаление невозможно!');
        if (st > 0) then
          begin
            writeln('Элемент [', mas[first], '] успешно удалён.');
            mas[first] := 0;
            inc(first);
            if (first > n) then first := 0;
            dec(st);
          end;
      write('Ваша очередь: ');for i:=first to last do write(mas[i], ' ');writeln;
      write('      Хотите удалить еще один элемент? (y/n): ');readln(otv);
      until otv='n';
    writeln;
    end;

begin
  st:=0;first:=0;last:=0;

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
