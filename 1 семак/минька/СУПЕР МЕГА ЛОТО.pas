const 
n=3;
m=9;
var
 a:array[1..n,1..m] of integer;
 i,j,v:integer;
begin
  randomize;

  for i:=1 to n do
    for j:=1 to m do
      a[i,j]:= random(5);
  
  for i:=1 to n do begin
    for j:=1 to m do
      write(a[i,j]:4);
    writeln
    end;
  
   

for i:=1 to n do begin
for j:=1 to m do
if a[i,j]<>0 then v+=1;
end;
writeln('Количество артефактов: ',v);

end.