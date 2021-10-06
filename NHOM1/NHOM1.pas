program test;
uses crt;
var
    i,code,count:integer;
    ques,a,b,c,s:string;
    check,ans,choos:char;
    f:text;

BEGIN
    count:=0;
    clrscr;
    textcolor(green);
    writeln('             CHUONG TRINH TRAC NGHIEM TIENG ANH');
    writeln('--------Nhan Enter de bat dau chuong trinh!---------');
    readln;
    for i:=1 to 30 do
        begin
            str(i,s);
            assign(f,'CAUHOI'+s+'.txt');
            reset(f);
            while not eoln(f) do read(f,ques);
            readln(f);
            readln(f,a);
            readln(f,b);
            readln(f,c);
            readln(f,check);
            close(f);
            clrscr;
            textbackground(green);
            textcolor(red);
            writeln('          CHUONG TRINH TRAC NGHIEM TIENG ANH');
            writeln('Question ',i,': ',ques);
            textcolor(14);
            write('A. ',a,' ; B. ',b,' ; C. ',c);
            writeln;
            textcolor(0);
            writeln('Your answer is: ');
            readln(ans);
            if (ans=check) then
                begin
                    textcolor(red);
                    writeln('CORRECT');
                    inc(count);
                    delay(1000);
                end else
                    begin
                        textcolor(red);
                        writeln('INCORRECT');
                        writeln('The correct answer: ',check);
                        delay(1000);
                    end;
            if i<30 then
               begin
                    write('=> Continue? (y/n): ');
                    readln(choos);
                    if (choos='N') or (choos='n') then break;
               end;
        end;
    clrscr;
    textbackground(cyan);
    textcolor(15);
    writeln('So dap an ban tra loi dung la: ',count,' dap an.');
    writeln('Cam on ban da su dung chuong trinh. Chao tam biet!');
    writeln('Nhan phim bat ki de ket thuc!');
    readln;
END.
