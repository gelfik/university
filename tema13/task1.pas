program tema13task1;
const n=5;
var a:array[1..n] of char;
      ans:char;
      i:integer;
begin
  repeat
    writeln('Введите ',n,' символов');
    for i:=1 to n do begin
      read(a[i]);
      write(a[i],' ');
    end;
    writeln;
    writeln('Вывод символов в обратном порядке');
    for n downto 1 do write(a[i],' ');
    writeln;
    writeln('Хотите продолжить?(y/n)');
    readln(ans);
  until ans='n';
end.
