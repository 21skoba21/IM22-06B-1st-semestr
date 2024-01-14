unit milkUnit;


Interface
    type
        milk = record
            nazvanie: string[20];
            objem: integer;
            tsena: integer;
        end;
        Market = array of milk;
    
    procedure Dobavka (var s:Market); // заполнение данных молока
    procedure Printmilk(var s:Market); // вывод списка молока на экран
    procedure Searchmilk(var s:Market); // процедура поиска молока по названию
    procedure SortSpisok(var s:Market); // процедура сортировки списка молока по цене


Implementation

    procedure Dobavka (var s:Market);
    var n := length(s);
    begin
        SetLength(s, n + 1);
        writeln('Введите название молока');
        readln(s[n].nazvanie);
        writeln('Введите объём в мл');
        readln(s[n].objem);
        writeln('Введите цену');
        readln(s[n].tsena);
    end;
    
    procedure Printmilk(var s:Market);
    begin
        if length(s)=0 then
            begin
                writeln();
                writeln('список пуст');
            end
        else
        begin
            writeln();
            writeln('Название':12,'объем':6,'цена':5);
            for var i := 0 to Length(s) - 1 do
                writeln(s[i].nazvanie:12, s[i].objem:6, s[i].tsena:5);
        end;
    end;

    procedure Searchmilk(var s:Market);
    var 
        m:integer;
        k:string;
    begin
        if (length(s) <> 0) then
        begin
            repeat
                writeln();
                writeln('введите название');
                readln(k);
                writeln();
                writeln('Название':12,'объем':6,'цена':5);
                for var i := 0 to length(s) - 1 do
                begin
                    if s[i].nazvanie = k then
                    begin
                        writeln(s[i].nazvanie:12, s[i].objem:6, s[i].tsena:5);
                        m := 0;
                    end;
                end;
            until(m=0);
        end
        else
        begin
            writeln();
            writeln('список пуст');
        end;
    end;

    procedure SortSpisok(var s:Market);
    begin
        if (length(s) <> 0) then 
        begin
            writeln();
            writeln('Список отсортирован');
            for var i := 0 to length(s) - 1 do
                for var j := i to length(s) - 1 do 
                begin 
                    if (s[i].tsena) > (s[j].tsena) then
                        swap(s[i], s[j]);
                end;
        end
        else
        begin
            writeln();
            writeln('список пуст');
        end;
    end;
end.