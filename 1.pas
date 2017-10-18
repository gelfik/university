program project1;

const N = 10;

var mas: array [0..N] of integer;
  st, k, i, first, last: byte;
  otv: char;

procedure add_elem;
begin
    repeat
      writeln;
      //i:=i+1;
      if (st=0) then writeln('ЋзҐаҐ¤м Їгбв !');
        if (st=N) then writeln('ЋзҐаҐ¤м § Ї®«­Ґ­ !')
           else begin
             st:=st+1; mas[last]:=random(100);   last:=last+1;
             if last>n then last:=1;
             //if last=N+1 then last:=1 else
           end;
      write('‚ и  ®зҐаҐ¤м: ');if first<last then for i:=first to last-1 do write(mas[i], ' ')
      else begin
        for i:=first to n do write(mas[i], ' ');
        for i:= 1 to last-1 do  write(mas[i], ' ');  end;
      writeln;
      write('      „®Ў ўЁвм ҐйҐ ®¤Ё­ н«Ґ¬Ґ­в? (y/n): ');readln(otv);
      until otv='n';
    writeln;
    end;

procedure del_elem;
begin
    repeat
      writeln;
        if (st=0) then writeln('ЋзҐаҐ¤м Їгбв !')
           else begin
             st:=st-1;
            // if first=N+1 then first:=1 else first:=first+1;
           mas[first]:=0;    first:=first-1;
             if first=n then first:=1;
           end;
    //  i:=i-1;
      write('‚ и  ®зҐаҐ¤м: ');if first<last then for i:=first to last-1 do write(mas[i], ' ')
      else begin
        for i:=first to n do write(mas[i], ' ');
        for i:= 1 to last-1 do  write(mas[i], ' ');  end;   writeln;
      write('      “¤ «Ёвм ҐйҐ ®¤Ё­ н«Ґ¬Ґ­в? (y/n): ');readln(otv);
      until otv='n';
    writeln;
    end;

begin
  st:=0;i:=0;first:=1;last:=1;

  randomize;

  repeat
    writeln('‚лЎ®а н«Ґ¬Ґ­в :');
    writeln('   1 - „®Ў ўЁвм н«Ґ¬Ґ­в.');
    writeln('   2 - “¤ «Ёвм н«Ґ¬Ґ­в.');
    writeln('   3 - ‚ле®¤');
    write('‚лЎ®а: ');readln(k);
    case k of

      1:add_elem;

      2:del_elem;

    end;

  until k=3;

end.
