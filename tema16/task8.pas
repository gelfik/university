program tema16task8;
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
    f1,f2,f3: file of student;
    st: student;
    name,name1,name2,name3: string[50];

    begin
      repeat
        writeln('1 - Ввод информации о студентах.');
        writeln('2 - Просмотр информации о студентах.');
        writeln('3 - Подсчет среднего значения по оценкам.');
        writeln('4 - Поиск по Фамилии и вывод оценок.');
        writeln('5 - Сохранить в файл.');
        writeln('6 - Прочитать из файла');
        writeln('7 - Объединение двух файлов.');
        writeln('8 - Выход.');

        write('Ваш выбор: ');readln(nomer);

        case nomer of

        1:begin
          repeat
            writeln;
            i:=kolstud+1;
            write('Введите фамилию: ');readln(stud[i].fam);
            write('Введите номер: ');readln(stud[i].nom);
            write('Введите ', m, ' оценки(через "Enter"): ');
              for j:=1 to m do begin
                readln(ocenka);
                stud[i].mark[j]:=ocenka;
                end;
            write('Добавить еще одного студента? (y/n): ');readln(otv);
            until otv='n';
          kolstud:=i;
          end;

        2:begin
          for i:= 1 to kolstud do begin
            writeln('Номер студента: ',stud[i].nom);
            writeln('Фамилия: ',stud[i].fam);
            write('Оценки: ');
              for j:=1 to m do write(stud[i].mark[j], ' ');
            end;
          writeln;
          end;

        3:begin
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

        4:begin
          writeln;
          write('Введите фамилию студента: ');readln(fam1);
          i:=1;
            while (i<=kolstud) and (stud[i].fam<>fam1) do i:=i+1;
            if i>kolstud then writeln('Студент не найден!!!')
              else begin
                write('Оценки: ');
                for j:=1 to m do
                write(stud[i].mark[j]);
              end;
          writeln;
          end;

        5:begin
          writeln;
          write('Введите имя создоваемого файла: ');readln(name);
          assign (f1,name);
          rewrite(f1);
            for i:=1 to kolstud do begin
              write(f1,stud[i]);
              end;
          close(f1);
          writeln;
          end;

        6:begin
          writeln;
          write('Введите имя читаемого файла: ');readln (name);
          writeln;
          assign (f1,name);
          reset(f1);
            while not eof(f1) do begin
                read(f1,st);
                writeln('Фамилия: ',st.fam);
                writeln('Номер: ',st.nom);
                write('Оценки: ');
                for j:=1 to m do
                  write(st.mark[j]:3);
                  writeln;
                  end;
          close(f1);
          writeln;
          end;

        7:begin
          write('Введите имя первого исходного файла: ');readln(name1);
          assign(f1,name1);
          write('Введите имя результируемого файла: ');readln(name3);
          assign(f3,name3);
          rewrite(f3);
          reset(f1);
            while not eof(f1) do begin
              read(f1,st);
              write(f3,st);
              end;
          close(f1);
          write('Введите имя второго исходного файла: ');readln(name2);
          assign(f2,name2);
          reset(f2);
            while not eof(f2) do begin
              read(f2,st);
              write(f3,st);
              end;
          close(f2);
          close(f3);
        end;

        end;
        until nomer=8;
    end.
