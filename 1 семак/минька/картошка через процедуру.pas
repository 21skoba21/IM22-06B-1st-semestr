const
n = 4;
m = 7;

type
Mas = array[1..n, 1..m] of integer;

procedure RandomMas(var r: Mas);
var
i, j: integer;
begin
for i := 1 to n do
for j := 1 to m do
r[i, j] := random(5);
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
writeln(s:4); end;
end;
var
pole: Mas;

begin
RandomMas(pole);
PrintMas(pole);
end.