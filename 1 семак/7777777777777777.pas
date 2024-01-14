type contact = record
  num:integer;
  fio:string[20];
  add:string[40];
  dopnum:integer;

end;
Tataj=array of contact;

procedure dobaw(var st:Tataj);
var
  n:integer;
  f:text;
begin
  assign(f,'C:\Users\Comp\Desktop\список.txt');
  n:=length(st);
  SetLength(st, n+1);
  append (f);
  write('Введите номер телефона: ');
  readln(st[n].num); 
  write(f,st[n].num,', ');
  write('Введите ФИО : ');
  readln(st[n].fio);
  write(f,st[n].fio,', ');
  write('Введите адрес : ');
  readln(st[n].add); 
  write(f,st[n].add,', ');
  write('Введите доп номер : ');
  readln(st[n].dopnum);
  writeln(f,st[n].dopnum,'. ');
  close(f);
  writeln();
end;

procedure telephonpofio(var st:Tataj);
var
  k,i:integer;
  s:string;
  f:text;
begin
  assign(f,'C:\Users\Comp\Desktop\список.txt');
  k:=0;
  write('Введите фио : ');
  readln(s);
  reset(f);
  for i:=0 to length(st)-1 do
    if st[i].fio=s then
    begin
      writeln('Данный номер человека ',st[i].num,' и ',st[i].dopnum,'.');
      k:=1;
    end;
  if k=0
  then writeln('Данного человека нет в списке.');
  close(f);
  writeln();
end;

procedure fiopotelephon(var st:Tataj);
var
  k,i,z:integer;
  s:string;
  f:text;
begin
  assign(f,'C:\Users\Comp\Desktop\список.txt');
  k:=0;
  write('введите нумбер телефона : ');
  readln(z);
  reset(f);
  for i:=0 to length(st)-1 do
    if st[i].num=z then
    begin
      writeln('Данный человека ',st[i].fio,'.');
      k:=1;
    end;
  if k=0
  then writeln('Данного человека нет в списке, либо это дополнительный номер, проверяем....');
  for i:=0 to length(st)-1 do
    if st[i].dopnum=z then
    begin
      writeln('Данный человека ',st[i].fio,'.');
      k:=1;
    end;
  if k=0
  then writeln('Данного человека нет в списке.');
  close(f);
  writeln();
end;

procedure udal(var st:Tataj);
 var
 K,i:integer;
 s:string;
 f:text;
 begin
   assign(f,'C:\Users\Comp\Desktop\список.txt');
 k:=0;
   writeln('Введите фамилию кандидата на удаление');
   readln(s);
   for i := 0 to length(st) - 1 do
   begin
    if st[i].fio=s then
    begin
     k:=i;
     break;
    end;
   end;
   if k=0 then
   writeln('Такого человека итак нет')
   else
   begin
  for i := k+1 to Length(st) - 1 do
    st[i-1]:=st[i];
  SetLength(st,length(st)-1);
   end;
 end;




var
  student:Tataj;
  a:integer;
  f:text;
begin
  assign(f,'C:\Users\Comp\Desktop\список.txt');
  rewrite(f);
  close(f);
  repeat
    writeln('Введите номер нужной операции: ');
    writeln('1 - Добавить контакт в книгу.');
    writeln('2 - Узнать номер человека по фио.');
    writeln('3 - Узнать фио по телефону.');
    writeln('4 - Удалить человека.');
    writeln('0 - Выход.');
    readln(a);
    writeln();
    if a=1 then
      dobaw(student);
    if a=2 then
      telephonpofio(student);
    if a=3 then
      fiopotelephon(student);
     if a=4 then
      udal(student);
  until (a=0);
end.