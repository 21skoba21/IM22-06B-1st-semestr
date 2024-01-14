const
n = 5;

var
f1, f2: text;
s: string;
i, a, b: integer;
str: array [1..5] of string;
begin
assign(f1, 'C:\Users\Comp\Desktop\test2.txt');
assign(f2, 'C:\Users\Comp\Desktop\otvet.txt');
reset(f1);
rewrite(f2);
while not eof(f1) do
begin
i += 1;
readln(f1, s);
writeln(f2, s);
str[i] := s;
end;
writeln(f2, 'В предложении найдены пары символов: ');
for a := 1 to n do
for b := 1 to length(str[a]) - 1 do
begin
if (str[a][b]) = (str[a][b + 1]) then
writeln(f2,'пара (', str[a][b], str[a][b + 1], ') в строке ',a, ', в столбце ',b,' и ', b+1);
end;
close(f1); close(f2);
end.