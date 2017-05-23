program tema18task1;
const n=9999999999;
var mas:array[1..n] of integer;
    i,x,maximum,l,r: integer;
    z:integer;

procedure gener;
  function max:integer;

    begin
      maximum:=0;
        for i:=1 to x do if maximum<mas[i] then if mas[i]>=l then if mas[i]<=r then maximum:=mas[i];
      max:=maximum;
      end;

    begin
      Randomize;
      Write('   Введите кол-во чисел в массиве: ');ReadLn(x);
      Write('   Массив ваших чисел: ');
        for i:=1 to x do begin
          mas[i]:=random(100);
          Write(mas[i], ' ');
          end;
      WriteLn;
      Write('   Введите левую границу массива: ');ReadLn(l);
      Write('   Введите правую границу массива: ');ReadLn(r);
      WriteLn('   Максимальное число: ', max:3);WriteLn;
    end;

begin
  repeat
    Randomize;
    Writeln('1 - Сгенерировать новый масив и найти в нем максимальное число.');
    Writeln('2 - Выход.');
    Write('Ваш выбор: ');ReadLn(z);WriteLn;
    case z of
      1:gener;
      end;
  until z=2;
end.

