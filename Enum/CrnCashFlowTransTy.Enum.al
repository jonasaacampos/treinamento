enum 50101 CrnCashFlowTransType
{
    Extensible = true;
    Caption = 'Transaction Type', Comment = 'pt-br: Tipo de Transação';


    value(1; "Receipt Provision")
    {
        Caption = 'Receipt Provision', Comment = 'pt-br: Provisão de Receita';
    }

    value(2; "Expense Provision")
    {
        Caption = 'Expense Provision', Comment = 'pt-br: Provisão de Despesa';
    }
}