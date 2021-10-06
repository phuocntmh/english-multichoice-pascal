program Tracnghiem;
uses crt;

procedure Process;
var
    i,j,count:integer;
    ques,a,b,c,mn:string;
    ans,check,rep:char;
    p:boolean;
    f:text;
begin
    i:=1;
    count:=0;
    repeat
        clrscr;
        str(i,mn);
        assign(f,'CAUHOI'+mn+'.TXT');
        reset(f);
        while not eoln(f) do read(f,ques);
        readln(f);
        readln(f,a);
        readln(f,b);
        readln(f,c);
        readln(f,check);
        close(f);
        textcolor(black);
        writeln('Question ',i,': ',ques);
        writeln('A. ',a,#32,' B. ',b,#32,' C. ',c);
        writeln('Your answer is: ');
        readln(ans);
        if (ans=check) then
           begin
              writeln('Your answer is correct!');
              inc(count);
              delay(1000);
           end else
              begin
                  writeln('Your answer is incorrect!!!');
                  writeln('The correct answer: ',check);
                  delay(1000);
              end;
        if i<30 then
           begin
              writeln;
              write('Do you want to continue? (y/n): ');
              readln(rep);
              if (rep='N') or (rep='n') then
                 begin
                      clrscr;
                      textcolor(red);
                      writeln('The End');
                      writeln('So dap an dung: ',count);
                      delay(5000);
                      textcolor(magenta);
                      j:=1; p:=true;
                      textbackground(lightgreen);
                      while p do
                          begin
                              clrscr;
                              gotoxy(20,j);
                              write('Chao tam biet - Hen gap lai');
                              delay(1000);
                              inc(j);
                              if j=25 then j:=1;
                              if keypressed then p:=false;
                          end;
                      exit;
                 end;
           end;
        inc(i);
        if i=31 then
           begin
              clrscr;
              textcolor(red);
              writeln('The End');
              writeln('So dap an dung: ',count);
              delay(5000);
              textcolor(magenta);
              j:=1; p:=true;
              textbackground(lightgreen);
              while p do
                  begin
                      clrscr;
                      gotoxy(20,j);
                      write('Chao tam biet - Hen gap lai');
                      delay(1000);
                      inc(j);
                      if j=25 then j:=1;
                      if keypressed then p:=false;
                  end;
           end;
        until i=31;
end;

procedure Color;
var
    i,j,n:integer;
    t,p:boolean;
begin
    textcolor(red);
    i:=1; t:=true;
    textbackground(cyan);
    while t do
        begin
            clrscr;
            gotoxy(20,i);
            write('Truong THPT Chat Luong Cao Trinh Hoai Duc - Binh Duong');
            delay(1000);
            inc(i);
            if i=25 then i:=1;
            if keypressed then t:=false;
        end;
    clrscr;
    textcolor(yellow);
    writeln('Chao mung cac ban den voi chuong trinh trac nghiem Tieng Anh!');
    writeln;
    textcolor(white);
    writeln('Noi dung: Verb-ing, to verb');
    writeln;
    writeln('           Nhom 1:');
    writeln('- Nguyen Minh Son');
    writeln('- Nguyen Thanh Hoa');
    writeln('- Nguyen Thi Bich Hoa');
    writeln('- Huynh Tan Loc');
    writeln;
    textcolor(red);
    writeln('Moi ban chon chuc nang!'); textcolor(blue);
    writeln('1. Bat dau chuong trinh.');
    writeln('2. Cham dut chuong trinh.');
    writeln;
    textcolor(lightred);
    writeln('Moi ban chon!');
    readln(n);
    if n=2 then
    begin
           textcolor(magenta);
           j:=1; p:=true;
           textbackground(lightgreen);
           while p do
              begin
                  clrscr;
                  gotoxy(20,j);
                  write('Chao tam biet - Hen gap lai');
                  delay(1000);
                  inc(j);
                  if j=25 then j:=1;
                  if keypressed then p:=false;
              end;
    end else
        if n=1 then Process else
           writeln('Ban da nhap sai lenh!');
end;



BEGIN
  Color;
END.
