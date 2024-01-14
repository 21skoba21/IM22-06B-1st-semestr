unit Myunit;
Interface
var s:string
procedure Dobavka (var s:Market);
procedure Printmilk(var s:Market);
procedure Searchmilk(var s:Market);
procedure SortSpisok(var s:Market);
implementation
procedure Dobavka (var s:Market);
begin
var n := length(s);
SetLength(s, n + 1);
writeln('Введите название молока');
readln(s[n].nazvanie);
writeln('Введите объём в мл');
readln(s[n].objem);
writeln('Введите цену');
readln(s[n].tsena);
end;
procedure Printmilk(var s:Market);
begin
if length(s)=0 then
writeln('список пуст') else
begin
writeln('Название':20,'объем':8,'цена':6);
for var i := 0 to Length(s) - 1 do
writeln(s[i].nazvanie:20, s[i].objem:8, s[i].tsena:6);
end;
end;
procedure Searchmilk(var s:Market);
var m:integer;
k:string;
begin
repeat
  writeln('введите название');
readln(k);
for var i := 0 to length(s) - 1 do
begin
if s[i].nazvanie = k then
begin
writeln(s[i].nazvanie:10, s[i].objem:10, s[i].tsena:10);
m := 0;
end
end;
until(m=0);
end;
procedure SortSpisok(var s:Market);
begin
for var i := 0 to length(s)-1 do
for var j:=i to length(s)-1 do begin
if (s[i].tsena)>(s[j].tsena) then
swap(s[i],s[j]);
end;
end;
begin
  
end.