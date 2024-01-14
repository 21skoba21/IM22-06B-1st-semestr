var
  f1:text;
  s:string;
  i:integer;
  begin
    assign(input,'C:\Users\Comp\Desktop\huita\test1.txt');
    reset (f1);
     writeln('В предложении найдены пары символов:');
    while not eof(f1) do  begin
     if s[i]=s[i+1]
   then 
     writeln('пара символов: "',s[i],'"  Место в строке ',i,' и ',i+1);
   close(f1);
   end;
  end.