program tema18task5;
const n=10; m=7;
type student =record
       fam:string[50];
       nom:integer;
       mark: array [1..m] of integer;
       end;
var stud:array [1..n] of student;
    kolstud,i,j,sum,kol,nomer,ocenka:integer;
    otv:char;
    fam1:string[50];

procedure vvod;
  begin
    repeat
      writeln;
      i:=i+1;
      write('Введите фамилию: ');readln(stud[i].fam);
      write('Введите личный номер: ');readln(stud[i].nom);
      write('Введите ', m, ' оценки(через "Enter"): ');
        for j:=1 to m do begin
          readln(ocenka);
          stud[i].mark[j]:=ocenka;
          end;
      write('Добавить еще одного студента? (y/n): ');readln(otv);
      until otv='n';
    kolstud:=i;
    writeln;
    end;

procedure vivod;
  begin
    writeln;
    for i:=1 to kolstud do begin
      writeln('Фамилия: ',stud[i].fam);
      writeln('Личный номер студента: ',stud[i].nom);
      writeln('Оценки: ');
        for j:=1 to m do write(stud[i].mark[j], ' ');
      writeln;
      end;
      writeln;
    end;

procedure srznach;
  begin
    writeln;
      for i:=1 to kolstud do begin
        sum:=0;
        kol:=0;
          for j:=1 to m do begin
            sum:=sum+stud[i].mark[j];
            kol:=kol+1;
            end;
        writeln('Среднее значение для ',i,' студента: ', (sum/kol):6:3);
        end;
    writeln;
    end;

procedure poisk;
  begin
    writeln;
    write('Введите фамилию студента: ');readln(fam1);
    i:=1;
      while (i<=kolstud) and (stud[i].fam<>fam1) do i:=i+1;
      if i>kolstud then writeln('Студент не найден!!!')
        else begin
          write('Оценки: ');
            for j:=1 to m do write(stud[i].mark[j], ' ');
          end;
     writeln;
     end;

    begin
      repeat
        writeln('1 - Ввод информации о студентах.');
        writeln('2 - Просмотр информации о студентах.');
        writeln('3 - Подсчет среднего значения по оценкам.');
        writeln('4 - Поиск по Фамилии и вывод оценок.');
        writeln('5 - Выход.');

        write('Ваш выбор: ');readln(nomer);

        case nomer of

        1:vvod;

        2:vivod;

        3:srznach;

        4:poisk;

        end;
        until nomer=5;
    end.
