codeunit 50104 CrnInteractionFunctions
{
    trigger OnRun()
    begin

    end;

    procedure ShowMessage()
    var
        MyInt: Integer;
        TheValueOfTxt: Label 'The value of %1 is %2';
    begin
        MyInt := 5;
        Message(TheValueOfTxt, 'MyInt', MyInt);
        // Displays: The value of MyInt is 5
    end;

    procedure ShowConfirm()
    begin
        if Confirm('Are you sure you want to delete?') then
            Message('OK')
        else
            Message('Not OK');
    end;

    procedure ShowStrMenu()
    var
        Days: Text[50];
        Selection: Integer;
    begin
        Days := 'Monday,Tuesday,Wednesday,Thursday,Friday';
        Selection := StrMenu(Days, 1, 'Which day is today ?');
        Message('You selected %1.', Selection);
    end;

    procedure ShowError()
    var
    begin
        MESSAGE('1');
        MESSAGE('2');
        ERROR('OOPS !');
        MESSAGE('3');
    end;

    procedure CalcDateFunc()
    var
    begin
        Message('%1', Today());
        Message('%1', CalcDate('-1Q', Today()));
    end;

    procedure RandomFun()
    var
        x: Integer;
        Text000: Label 'X=%1';
    begin
        Randomize();
        x := Random(5);
        Message(Text000, x);
    end;
}