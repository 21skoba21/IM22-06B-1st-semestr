const
n=6;
var a:array[1..n,1..n] of integer;
var i,j,k,v:integer;
begin
for i:=1 to n do
  for j:=1 to n do
    a[i,j]:=random(2);
  
  for i:=1 to n do begin
    for j:=1 to n do
    write(a[i,j]:3);
    writeln
    end;
    writeln;
    for i:=1 to n do begin
    for j:=1 to n do begin
      
      if a[i,j]=1 then write('*':3);
      if a[i,j]=0 then write(' ':3);
      
      end;
      writeln
    end;
    k:=0;
    for i:=1 to n do 
    for j:=1 to n do
      k+=(a[i,j]);
    v:=(n*n)-k;
    writeln(k);
    writeln (v);
    end.