codeunit 50102 CrnCodeunitPublicAccess
{
    Access = Public; //Chamada pode ser feita de qualquer de dentro ou fora da extensão.
    Subtype = Normal;

    trigger OnRun()
    begin

    end;

    procedure RunFunctionWithParm(Param1: Integer; Param2: Text[50]): Boolean
    begin
        Message('Parm1 is %1, Parm2 is %2', Param1, Param2);
    end;
}