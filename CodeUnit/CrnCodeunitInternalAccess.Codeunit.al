codeunit 50101 CrnCodeunitInternalAccess
{
    Access = Internal; //Chamada pode ser feita apenas de dentro da extensão
    Subtype = Normal;

    trigger OnRun()
    begin

    end;

    procedure RunFunctionWithParm(Param1: Integer; Param2: Text[50]): Boolean
    begin
        Message('Parm1 is %1, Parm2 is %2', Param1, Param2);
    end;
}