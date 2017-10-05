program search_uniq_elem;

const N=19;

var a: array[0..N] of integer;
  nomer:byte;

procedure gener_mas;
var i:byte;
begin
   writeln;
   for i:=0 to N do begin
     a[i]:=random(10);
     end;
   WriteLn('!!! Массив сгенерирован. !!!');
   writeln;
end;

procedure show_mas;
var i:byte;
begin
   writeln;
   Write('Ваш массив из ', N+1,' элементов: ');
   for i:=0 to N do begin
      Write(a[i], ' ');
      end;
   writeln;writeln;
end;

procedure search_mas;
var flag:boolean;
  i, j:byte;
begin
   writeln;
   Write('Уникальные элементы: ');
   for i:=0 to N do begin
      flag:=true;
      for j:=0 to N do
         if (a[i] = a[j]) and (i <> j) then begin
            flag:=false;
            break;
         end;
      if flag = True then Write(a[i],' ');
      end;
   writeln;writeln;
end;



BEGIN
randomize;
repeat
  writeln('1 - Генерация массива.');
  writeln('2 - Вывод массива.');
  writeln('3 - Поиск уникального элемента.');
  writeln('4 - Выход.');

  write('Ваш выбор: ');readln(nomer);

  case nomer of

  1:gener_mas;

  2:show_mas;

  3:search_mas;

  end;
  until nomer=4;
END.
