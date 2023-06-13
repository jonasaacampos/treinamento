codeunit 50105 CrnSymbols
{
    trigger OnRun()
    begin
#if DEBUG
        Message('Only in debug versions');
#endif
    end;
}