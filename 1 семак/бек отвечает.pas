program RingsOfNumbers;

type
PNumber = ^TNumber;
TNumber = record
info: integer;
next: PNumber;
end;

var
N, K, i, p: integer;
head, cur, prev: PNumber;

// процедура создания кольца чисел
procedure CreateCircleOfNumbers(var head: PNumber;var N: integer);
var
cur, prev: PNumber;
begin
// создаем голову кольца
new(head);
prev := head;
n := 1;
read(p);
// добавляем в кольцо числа от 1 до N
while p <> 0 do
begin
new(cur);
cur^.info := p;
prev^.next := cur;
prev := cur;
n:=n+1;read(p);
end;
// замыкаем кольцо
prev^.next := head^.next;
end;

// процедура удаления каждого K-го числа из кольца
procedure RemoveNumbersFromCircle(var head: PNumber; var N: integer; K: integer);
var
cur, prev: PNumber;
i,M: integer;
begin
cur := head^.next;
prev := head;
i := 1;
// проходим по кольцу и удаляем каждый K-й узел
M:=N;
while i <= M do
begin
if i mod K = 0 then
begin
prev^.next := cur^.next;
dispose(cur);
cur := prev^.next;
N:=N-1;
end
else
begin
prev := cur;
cur := cur^.next;
end;
Inc(i);
end;
end;

// процедура печати кольца чисел
procedure PrintCircleOfNumbers(var head: PNumber; N: integer);
var
cur: PNumber;
i: integer;
begin
writeln('Обновлённый список чисел: ');
cur := head^.next;
i := 1;
while i < N do
begin
write(cur^.info, ' ');
cur := cur^.next;
Inc(i);
end;
writeln;
end;

begin
// запрашиваем N и K у пользователя
write('Введите К: ');
readln(K);
// создаем кольцо чисел
writeln('Введите элементы кольца: ');
CreateCircleOfNumbers(head, N);

// удаляем каждый K-й элемент из кольца
RemoveNumbersFromCircle(head, N, K);
// печатаем результирующее кольцо чисел
PrintCircleOfNumbers(head, N);
end.