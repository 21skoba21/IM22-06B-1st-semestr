const
  n = 3;
  m = 2;

var
  a: array[1..n, 1..m] of integer;

var
  i, j, k, v, w: integer;

begin


  for i := 1 to n do 
    for j := 1 to m do
      a[i, j] := random(9);
  
  
  for i := 1 to n do begin
v := 0;
for j := 1 to m do
begin
write(a[i, j]:3);
v += a[i, j];
end;
writeln(v:4);
end;
  
  k := 0;
  for i := 1 to n do 
    for j := 1 to m do
      k += a[i, j];
  writeln('Сумма всех чисел: ', k);
end.


