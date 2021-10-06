program TNTA;
uses crt;
var
    i,code,count,choos:integer;
    ques,a,b,c,s:string;
    check,ans:char;
    f:text;

BEGIN
    count:=0;
    clrscr;
    textcolor(green);
    writeln('             Truong THPT Chat Luong Cao Trinh Hoai Duc');
    writeln;
    writeln('             CHUONG TRINH TRAC NGHIEM TIENG ANH');
    textcolor(yellow);
    writeln('          4F. Pharsal Verb Grade 12');
    textcolor(white);
    writeln;
    writeln('       Lop: 12AB6');
    writeln('+ Nguyen Tran Thanh Thao');
    writeln('+ Le Nha Ngoc Kim Thanh');
    writeln('+ Ly Thu Thuy');
    writeln('+ Nguyen Thi Anh Tuyet');
    writeln;
    textcolor(red);
    writeln('-----------------');
    writeln('Nhan 1 de bat dau. Nhan 2 de thoat.');
    readln(choos);
    if choos<>1 then exit;
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
            writeln('         CHUONG TRINH TRAC NGHIEM TIENG ANH');
            writeln('     Noi dung: 4f. Pharsal Verb');
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
            writeln;
            writeln('Nhan Enter de tiep tuc.....');
            readln;
        end;
    clrscr;
    textbackground(cyan);
    textcolor(15);
    writeln('So dap an ban tra loi dung la: ',count,' dap an.');
    writeln('Cam on ban da su dung chuong trinh. Chao tam biet!');
    writeln('Nhan phim bat ki de ket thuc!');
    readln;
END.
