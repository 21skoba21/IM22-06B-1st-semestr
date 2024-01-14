type
  PCar = ^TCar;
  TCar = record
    mosh: integer;
    num: string;
    next: PCar;end;

var
  f: text;
  n: integer;
  s: string;
  head: PCar;

procedure AddCar(var head: PCar; n: integer; s: string);
var
  p: PCar;
begin
  new(p);
  p^.mosh := n;
  p^.num := s;
  p^.next := head;
  head := p;
end;

procedure print(head:PCar);
begin
  while head <> nil do begin
    writeln(head^.mosh,head^.num);
    head:=head^.next;
  end;
end;

procedure dell(var head:PCar;s: string);
var p,p1:PCar;
begin
  if head <> nil then begin
    if head^.num = s then begin
      p := head;
      head := head^.next;
      dispose(p)
    end else begin
      p := head;
      while p^.next <> nil do
      begin
        if p^.next^.num = s then begin
          p1 := p^.next;
          p^.next := p1^.next;
          dispose(p1);
          break;
        end;
        p := p^.next; 
      end;
    end;
  end;
end;

begin
  assign(f, 's.txt');
  reset(f);
  while not eof(f) do
  begin
    readln(f, n, s);
    AddCar(head, n, s);
  end;
  close(f);
  var t:=10;
  while t <> 0 do begin
    writeln('введите номер соответствующий процедуре: ');
    writeln('1 добавить машину');
    writeln('2 удалить машину');
    writeln('3 печать');
    writeln('0 выйти');
    readln(t);
    if t = 1 then begin
      writeln('введите мощность машины: ');
      readln(n);
      writeln('введите номер машины: ');
      readln(s);
      s:=' '+s;
      AddCar(head, n, s);
    end;
    if t = 3 then begin
      print(head);
    end;
    if t = 2 then begin
      writeln('введите номер машины, которую хотите удалить');
      readln(s);
      s:=' '+s;
      dell(head,s);
    end;
  end;
end.