type
milk = record
nazvanie: string[20];
objem: integer;
tsena: integer;
end;
Market=array of milk;

//заполнение данных молока
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

//вывод списка молока на экран
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
//процедура поиска молока по названию
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

var
konets:Market;
a:integer;
begin
repeat
Writeln('Введите номер нужной операции: ');
Writeln('1 - Добавить молоко');
Writeln('2 - Распечатать список товаров');
Writeln('3 - Поиск молока по названию');
Writeln('0 - выход');
readln(a);
if a = 1 then begin
Dobavka(konets);
end;
if a = 2 then
SortSpisok(konets);
Printmilk(konets);
if a = 3 then
Searchmilk(konets);
until (a=0);
end.