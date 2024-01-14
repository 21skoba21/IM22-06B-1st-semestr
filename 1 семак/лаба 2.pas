var a:array[1..10,1..11] of real;
    m,n,i,j,k:integer;
    x:real;
begin
repeat
write('Введите количество строк от 2 до 10 m=');
readln(m);
until m in [2..10];
repeat
write('Введите количество столбцов от 2 до 10 n=');
readln(n);
until n in [2..10];
randomize;
writeln('Исходная матрица');
writeln('Максимальный':n*6+10);
for i:=1 to m do
 begin
  for j:=1 to n do
   begin 
    a[i,j]:=-9+18*random;
    write(a[i,j]:6:2);
    if j=1 then a[i,n+1]:=a[i,1]
    else if a[i,j]>a[i,n+1] then a[i,n+1]:=a[i,j];
   end;
  writeln(a[i,n+1]:8:2);
  end;
 for i:=1 to m-1 do
 for j:=i+1 to m do
 if a[i,n+1]>a[j,n+1] then
 for k:=1 to n+1 do
  begin
   x:=a[i,k];
   a[i,k]:=a[j,k];
   a[j,k]:=x;
  end;
 writeln('Строки упорядочены по возрастанию максимальных элементов');
 writeln('Максимальный':n*6+10);
 for i:=1 to m do
  begin 
   for j:=1 to n do
   write(a[i,j]:6:2);
   writeln(a[i,n+1]:8:2);
  end;
 readln
 end.