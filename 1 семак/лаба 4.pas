var
  s:string;
  n:integer;
  i:integer;
  begin
    writeln('напишите строку',s);
    read(s);
    n:=length(s); 
    writeln('В предложении найдены пары символов:');
   for i:= 1 to n-1 do 
     if s[i]=s[i+1]
   then 
     writeln('пара символов: "',s[i],'"  Место в строке ',i,' и ',i+1);
  end.