program car_sales_laz;
const N=20;

type car = record
     model:string[60];
     year:integer;
     price:integer;
     end;

var
stock: array[0..N] of car;
nomer, i, kolstud:byte;
otv: char;

procedure add_car;
begin
    repeat
      writeln;
      i:=i+1;
      write('   Марка и модель авто: ');readLn(stock[i].model);
      write('   Год прозводства: ');readLn(stock[i].year);
      write('   Цена: ');readLn(stock[i].price);
      write('      Добавить еще одно авто? (y/n): ');readln(otv);
      until otv='n';
    kolstud:=i;
    writeln;
    end;

procedure show_cars;
begin
   writeln;
   Writeln('Все автомобили:');
   for i:=1 to kolstud do begin
      writeln;
      WriteLn('   Марка и модель авто: ', stock[i].model);
      WriteLn('   Год прозводства: ', stock[i].year);
      WriteLn('   Цена: ', stock[i].price);
      end;
   writeln;
end;

procedure search;
var car_model:string[50];
begin
   writeln;
   Write('Напишите модель авто: ');ReadLn(car_model);
   for i:=1 to kolstud do if stock[i].model = car_model then begin
     writeln;
     WriteLn('   Марка и модель авто: ', stock[i].model);
     WriteLn('   Год прозводства: ', stock[i].year);
     WriteLn('   Цена: ', stock[i].price);
     end;
   writeln;
end;

procedure searchprice500;
var car_price:integer;
begin
   writeln;
   car_price:=500000;
   Write('Авто дороже 500 000 рублей:');writeln;
   for i:=1 to kolstud do if stock[i].price > car_price then begin
     writeln;
     WriteLn('   Марка и модель авто: ', stock[i].model);
     WriteLn('   Год прозводства: ', stock[i].year);
     WriteLn('   Цена: ', stock[i].price);
     end;
   writeln;
end;

BEGIN
i:=0;
repeat
  writeln('1 - Ввод данных об авто.');
  writeln('2 - Вывод данных об авто.');
  writeln('3 - Поиск по модели.');
  writeln('4 - Вывод авто цена которых больше 500 000 рублей.');
  writeln('5 - Выход.');

  write('Ваш выбор: ');readln(nomer);

  case nomer of

  1:add_car;

  2:show_cars;

  3:search;

  4:searchprice500;

  end;
  until nomer=5;
END.


(*

/* Исполльзуя тип массив записей составить програму для уяёта и обработки даныхх
о наличии на складе автомашин

Поля записи:
Модель год выпуска и стоимость

Программа должна выполнять действия, к4оторые долэжны быть оформлены вв иде подпрограм

Ввод данных об автог
Вывод данных об авто
Поиск по модели
Вывод авто цена которых больше 500 рублейъ
*/

Сделать меню
каждый пункт меню через вы *)
