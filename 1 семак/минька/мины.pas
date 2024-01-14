const
n=10;
m=14;
var 
  a:array[1..n,1..m]of integer;
  i,j,k:integer;
  begin
    for i:= 1 to n do
      for j:= 1 to m do
        a[i,j]:= random (2);
      for i:= 1 to n do begin
        for j:= 1 to m do 
          write (a[i,j]:4);
        writeln
      end;
      
      k:=0;
      for i:= 1 to n do 
      for j:= 1 to m do
       k+=a[i,j];
       writeln ('мин на поле ',k);
       
  end.