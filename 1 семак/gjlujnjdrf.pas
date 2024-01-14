const
m=5;
n=8;
var
  a:array[1..m,1..n] of byte;
  i,j,b,k,v,r,t:integer;f:boolean;
  begin
    for i:=1 to m do begin
      for j:=1 to n do begin
        a[i,j]:=0;
        write(a[i,j]:2);
      end;
      writeln;
    end;
    randomize;
    b:=m*n;
    while (b>(m*n)/2) and (b<>0) do b:=random(m*n);
    for k:=1 to b do begin
      f:=true;
    while f do
    begin
      r:=random(m)+1;
      t:=random(n)+1;
      if a[r,t]=0 then begin
        f:=false;
      a[r,t]:=random(9)+1;
      end;
      end;
    end;
    writeln;
    for r:=1 to m do begin
      for t:=1 to n do 
      write(a[r,t]:2);
      writeln;
      end;
      for r:=1 to m do begin
      for t:=1 to n do 
        if a[r,t]<>0 then v+=1;
      end;
      writeln('Количество артефактов: ',v);
  end.