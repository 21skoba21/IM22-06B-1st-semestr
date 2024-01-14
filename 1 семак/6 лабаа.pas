
type
TStudent=record
fam: string;
pol: char;
god: integer;
end;
TGruppa=array of TStudent;

//процедура добавления студента в группу
procedure AddStudent (var gr: Tgruppa);
var
n: integer;
begin
n:=length(gr);
SetLength(gr, n+1);
writeln('Введите фамилию студента');
readln(gr[n].fam);
writeln('Введите пол студента');
readln(gr[n].pol);
writeln('Введите год рождения студента');
readln(gr[n].god);
end;

//процедура печати списка студентов
procedure PrintStudents(gr:TGruppa);
var
i: integer;
begin
if length(gr)=0 then
writeln('Список пуст')
else
begin
writeln('Фамилия':20,'Пол':3,'Год':6);
for i:=0 to Length(gr)-1 do
writeln(gr[i].fam:20, gr[i].pol:3, gr[i].god:6);
end;
end;

procedure RemoveStudents(var gr:TGruppa);
var
K,i:integer;
s:string;
begin
k:=0;
writeln('Введите фамилию кандидата на удаление');
readln(s);
for i := 0 to length(gr) - 1 do
begin
if gr[i].fam=s then
begin
k:=i;
break;
end;
end;
if k=0 then
writeln('Такого студента итак нет')
else
begin
for i := k+1 to Length(gr) - 1 do
gr[i-1]:=gr[i];
SetLength(gr,length(gr)-1);
end;
end;


var
Gruppa: TGruppa;
a: integer;

begin
repeat
Writeln('Введите номер нужной операции: ');
Writeln('1 - добавить студента');
Writeln('2 - Распечатать список группы');
Writeln('3 - Удалить студента');
Writeln('0 - выход');
readln(a);
if a=1 then
AddStudent(Gruppa);
if a=2 then
PrintStudents(Gruppa);
if a=3 then
RemoveStudents(Gruppa);
until (a=0);
Readln;
end.