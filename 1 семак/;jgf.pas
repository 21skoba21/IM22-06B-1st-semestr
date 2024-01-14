const
n = 3;
m = 9;

type
Mas = array[1..n, 1..m] of integer;

procedure RandomMas(var r: Mas);
var
i, j: integer;
begin
for i := 1 to n do
for j := 1 to m do
r[i, j] := random(2);
end;

procedure PrintMas(var p: Mas);
var
i, j, s: integer;
begin

for i := 1 to n do
begin
s := 0;
for j := 1 to m do
begin
write(p[i, j]:3);
s += p[i, j];
end;
writeln(' количество клиентов: ', s); end;
end;

procedure ColMas(var c: Mas);
var
i, j, k, d, s, result: integer;
begin
for j := 1 to m do
begin
s := c[1, j];

if s = 0 then begin
result := c[2, j];
if result = 0 then
result := c[3, j];
if result = 0 then
writeln('в это время все свободны ', j)
end
else s += 0;
end;
if result > 0 then
end;

var
pole: Mas;

begin
RandomMas(pole);
PrintMas(pole);
ColMas(pole);
end.