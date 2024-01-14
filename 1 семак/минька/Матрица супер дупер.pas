const
n=3;
m=3;
var
  a: array[1..n,1..m] of real;
  i,j : integer;
  begin
    for i:=1 to n do 
      for j:=1 to m do
        a[i,j]:=-100+random(201);
     for i:=1 to n do begin 
      for j:=1 to m do
        write(a[i,j]: 36: 3);
      writeln
      end;
  end.