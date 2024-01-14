type point=record
x,y:real;
end;
duga=record
  l,r:integer;
end;
var
  s:array of array of integer;
  d:array of array of real;
  pnts:array of point;
  p: point;
  minI, minJ: integer;
  min: real;


begin
  writeln('Введите координаты точек: ');
  readln(p.x, p.y);
  while (p.x <> 0) or (p.y <> 0) do begin
    SetLength(pnts, Length(pnts)+1);
    pnts[High(pnts)]:=p;
  readln(p.x, p.y);
  end;
  
  writeln('расстояния');
  SetLength(d, Length(pnts));
  for var i:=0 to High(pnts)do begin
  SetLength(d[i], Length(pnts));
  for var j:=0 to High(pnts)do begin
    d[i,j]:=sqrt(sqr(pnts[i].x-pnts[j].x)+sqr(pnts[i].y-pnts[j].y));
    write(d[i,j]:6:2);
  end;
  writeln;
  end;
  
    SetLength(d, Length(pnts));
    SetLength(s, Length(pnts));
    for var i:=0 to High(pnts)do begin
    SetLength(s[i], Length(pnts));
    end;
  
  for var i:=0 to High(pnts)do begin
     min:=1000000;
    for var j:=0 to High(pnts)do begin
    if (d[i,j]<>0) and (d[i,j]<min) then 
      begin
      min:=d[i,j];
      minI:=i;
      minJ:=j;
    end;
    end;
    s[minI,minJ]:=1;
    s[minJ,minI]:=1;
    end;
    writeln;
    writeln('Матрица смежности:');
    for var i:=0 to High(pnts)do begin
    for var j:=0 to High(pnts)do begin
    write(s[i,j]:6);
  end;
 writeln
 end;
end.