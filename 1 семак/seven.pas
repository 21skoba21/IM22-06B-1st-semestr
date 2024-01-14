type contact = record
  num:integer;
  fio:string[20];
  add:string[40];
  dopnum:integer;
end;
tcontact=file of contact;

procedure dobaw(fn:string);
var
 s:string; m: contact; f:tcontact;
begin
  assign(f,fn);
  if not FileExists(fn)then
    rewrite(f)
  else
    reset(f);
  seek(f,fileSize(f));
  while true do
  begin
     writeln('добавить нового человека? T or F');
    readln(s);
    if s='T' then
      begin
        writeln('номер телефона');
      readln(m.num);
      writeln('фио');
      readln(m.fio);
      writeln('адрес');
      readln(m.add);
      writeln('доп номер');
      readln(m.dopnum);
      write(f,m);
    end
    else
      break;
  end;
  close(f);
end;

function telephonpofio(s:string; fn: string; var m:contact):boolean;
var f:tcontact;
 begin
  result:=false;
    assign(f,fn);
    reset(f);
    while not Eof(f) do
    begin
      read(f,m);
      if m.fio = s then
      begin
        result:=true;
        break;
      end;
    end;
    close(f);
end;
function fiopotelephon(z:integer; fn: string; var m:contact):boolean;
var f:tcontact;
 begin
  result:=false;
    assign(f,fn);
    reset(f);
    while not Eof(f) do
    begin
      read(f,m);
      if (m.num = z) or (m.dopnum = z) then
      begin
        result:=true;
        break;
      end;
    end;
    close(f);
end;


procedure Delete(s:string; fn: string; var m:contact);//удаление запись
var
  f:tcontact;
begin
  assign(f,fn);
reset(f);
 while not Eof(f) do
    begin
      read(f,m);
      if m.fio=s then
      begin
        m.fio:='';
        m.num:=0;
        m.add:='';
        m.dopnum:=0;
      end;
      end;
      end;


var
  s:string;
  m: contact;
  fn: string;
  z:integer;
begin
  fn :='список.dat';
 dobaw(fn);
 writeln('Введите фио, чтобы найти телефон');
readln(s);
if telephonpofio(s, fn, m) then writeln(m.num,' и ',m.dopnum) else writeln('Такого не нашлось');
writeln('Введите телефон, чтобы найти фио');
readln(z);
if fiopotelephon(z, fn, m) then writeln(m.fio) else writeln('Такого не нашлось');
writeln ('введите фио, чтобы удалить');
readln(s);
Delete(s,fn,m);
end.
  