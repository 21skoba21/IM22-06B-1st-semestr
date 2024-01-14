{1.Матрица смежности для ориентированного
  0 1 0 4 1
  0 0 1 0 0
  0 0 0 1 0
  0 2 0 0 0
  0 0 0 0 0
  2. Степени [i]
  [1]=3
  [2]=1
  [3]=1
  [4]=1
  [5]=0
  Граф является неполным, т.к. из вершины 5 мы не можем дойти ни до одной вершины графа
  3. Матрица смежности для неориентированного
  0 1 0 4 1
  1 0 1 2 0
  0 1 0 1 0
  4 2 1 0 0
  1 0 0 0 0}
const
  max = 5;

type
  Graf = ^TGraf;
  TGraf = record
    c: integer;
    next, en: Graf;
  end;

var
  G: array[1..max, 1..max] of integer;
  mat: array[1..max] of boolean;
  ob: Graf;
  m: integer;
  

procedure Dobaw(var ob: Graf; m: integer);
var
  p: Graf;
begin
  new(p);
  p^.c := m;
  p^.next := ob;
  ob := p;
end;

procedure Searchdob(m: integer);
begin
  mat[m] := True;
  write('->'+m);
  Dobaw(ob, m);
  for var i := 1 to max do
    if (G[m, i] > 0) and (mat[i] = false) then
      searchdob(i);
end;
procedure printItemsFromHead(ob: Graf);
var
  p: Graf;
begin
  p := ob;
  while p <> nil do begin
    writeln(p^.c);
    p := p^.next;
  end;
end;
 procedure printItemsFromHeadR(ob: Graf);
begin
  if ob <> nil then begin
    writeln(ob^.c);
  printItemsFromHead(ob^.next);
 end;
end;

begin
  G[1, 1] := 0; G[1, 2] := 1; G[1, 3] := 0; G[1, 4] := 4; G[1, 5] := 1;
  G[2, 1] := 1; G[2, 2] := 0; G[2, 3] := 1; G[2, 4] := 2; G[2, 5] := 0;
  G[3, 1] := 0; G[3, 2] := 1; G[3, 3] := 0; G[3, 4] := 1; G[3, 5] := 0;
  G[4, 1] := 1; G[4, 2] := 2; G[4, 3] := 1; G[4, 4] := 0; G[4, 5] := 0;
  G[5, 1] := 1; G[5, 2] := 0; G[5, 3] := 0; G[5, 4] := 0; G[5, 5] := 0;
  writeln('Практическая часть 4 от 1-й вершины');
  m := 1;
  Searchdob(m);
  writeln;
  Writeln('Практическая часть 5');
  printItemsFromHeadR(ob)
  

  
end.