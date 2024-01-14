const
n=3;
m=3;
var
  a:array[1..n,1..m]of integer;
  i,j:integer;
  k:real;
 begin
  for i:=1 to n do 
   for j:=1 to m do begin
   a[1,j]:=-30 + random(61);
   a[2,j]:=random(20);
   a[3,j]:=60+random(41);
 end;
 for i:=1 to n do begin
   for j:=1 to m do
     write(a[i,j]:5);
   writeln
   end;
   k:=0;
   for j:=1 to n do begin 
k:=(k+a[1,j]);
   end;
   k:=k/m;
write (k);
   end.

   
   
     