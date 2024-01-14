type contact = record
  nomer:string[12];
  fio:string[20];
  addr:string[40];
  dopnum:string[12];
end;
tcontact=file of contact;

procedure dobaw(fn:string);
var
 s:string; m: contact; f:tcontact;
begin
  assign(f,fn);
  if not FileExists(fn) then
    rewrite(f)
  else
    begin
        reset(f);
        seek(f,fileSize(f));
    end;
  while true do
  begin
     writeln('добавить нового человека? T or F');
    readln(s);
    if s='T' then
      begin
        writeln('phone number');
        readln(m.nomer);
        writeln('fio');
        readln(m.fio);
        writeln('address');
        readln(m.addr);
        writeln('additional phone number');
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

function fiopotelephon(z:string; fn: string; var m:contact):boolean;
var f:tcontact;
 begin
  result:=false;
    assign(f,fn);
    reset(f);
    while not Eof(f) do
    begin
      read(f,m);
      if ((m.nomer = z) or (m.dopnum = z)) then
      begin
        result:=true;
        break;
      end;
    end;
    close(f);
end;


procedure Delete__(s:string; fn: string; var m:contact);//удаление запись
var
  f:tcontact;
  contactElement: contact;
  i: integer;
begin
    assignFile(f, fn);
    if not fileExists(fn) then
        writeln('takogo faila net')
    else
    begin
        reset(f);
        if (fileSize(f) <> 0) then
        begin
            while not EOF(f) do
            begin
                read(f, contactElement);
                i += 1;
                if (contactElement.fio = s) then
                    break
            end;
            seek(f, i - 1);
            for var n := i - 1 to filesize(f) - 2 do begin
                seek(f, n + 1);
                read(f, contactElement);
                seek(f, n);
                write(f, contactElement);
            end;
            seek(f, filesize(f) - 1);
            truncate(f);
            
            closeFile(f);
        end
        else
            writeln('fail pust');
    end; 
end;


var
  s:string;
  m: contact;
  fn: string;
  z:string;
begin
  fn :='spisok.dat';
 dobaw(fn);
 writeln('enter fio to find phone number');
readln(s);
if telephonpofio(s, fn, m) then writeln(m.nomer,' и ',m.dopnum) else writeln('Такого не нашлось');
writeln('enter phone number to find fio');
readln(z);
if fiopotelephon(z, fn, m) then writeln(m.fio) else writeln('Такого не нашлось');
writeln ('enter fio to be deleted');
readln(s);
Delete__(s,fn,m);
end.
  