codeunit 50100 CrnStatements
{

    procedure RunForStatement()
    var
        intCount: Integer;
        total: Integer;
    begin
        for intCount := 1 to 5 do
            total := total + 3;

        Message('The result is: %1', total);
    end;

    procedure RunForDownToStatement()
    var
        intCount: Integer;
        totalSales: Integer;
        numberSales: Integer;
        sales: array[5] of Integer;
    begin
        GetSales(sales);

        for intCount := 5 downto 1 do begin
            totalSales := totalSales + sales[intCount];
            numberSales := numberSales + 1;
        end;

        Message('The totalSales is: %1. The numberSales is: %2', totalSales, numberSales);
    end;

    procedure RunForeachStatement()
    var
        stringList: List of [Text[20]];
        stringItem: Text[20];
    begin
        stringList.Add('A');
        stringList.Add('B');
        stringList.Add('C');
        stringList.Add('D');

        foreach stringItem in stringList do
            Message(stringItem);
    end;

    procedure RunWhileStatement()
    var
        index: Integer;
        totalSales: Integer;
        sales: array[5] of Integer;
    begin
        GetSales(sales);

        while totalSales < 8 do begin
            index := index + 1;
            totalSales := totalSales + sales[index];
        end;

        Message('The result is: %1', totalSales);
    end;

    procedure GetSales(var _sales: array[5] of Integer)
    begin
        _sales[1] := 1;
        _sales[2] := 2;
        _sales[3] := 3;
        _sales[4] := 4;
        _sales[5] := 5;
    end;

    procedure RunRepeatUntilStatement()
    var
        index: Integer;
        totalSales: Integer;
        sales: array[5] of Integer;
    begin
        GetSales(sales);

        repeat
            index := index + 1;
            totalSales := totalSales + sales[index];
        until totalSales >= 8;

        Message('The result is: %1', totalSales);
    end;
}