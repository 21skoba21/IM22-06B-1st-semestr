uses milkUnit;

var 
    milkArray: Market;
    a: integer;

begin
    repeat
        Writeln();
        Writeln('Введите номер нужной операции: ');
        Writeln('1 - Добавить молоко');
        Writeln('2 - Распечатать список товаров');
        Writeln('3 - Поиск молока по названию');
        Writeln('4 - Отсортировать список по цене');
        Writeln('0 - выход');
        readln(a);
        if (a = 1) then
            Dobavka(milkArray);
        if (a = 2) then
            Printmilk(milkArray);
        if (a = 3) then
            Searchmilk(milkArray);
        if (a = 4) then
            SortSpisok(milkArray);
    until (a=0);
end.