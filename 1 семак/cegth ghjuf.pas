const
m=4;
n=4;
type
  mas=array[1..m,1..n] of integer;
procedure Randmas (var r:mas);
var
  i,j:integer;
  begin
    for i:=1 to n do 
      for j:=1 to m do 
        r[i,j]:=random(9);
      end;
   procedure Kolvo(var a:mas);
   var i, j, k: integer;
   begin
for i:=1 to n do
  begin
    k:=0;
      for j:=1 to m do 
        begin
        write (a[i,j]:4);
      k+=a[i,j];
     end;
     writeln(' количество rfhbjib: ', k);
end;
end;
var
pole: Mas;
begin
  Randmas(pole);
  Kolvo(pole);
  
 end.
    