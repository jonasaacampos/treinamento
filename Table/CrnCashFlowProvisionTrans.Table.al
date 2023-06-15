table 50100 CrnCashFlowProvisionTrans
{
    Caption = 'Cash Flow Provision Trans', Comment = 'pt-br: Transações de Provisão de Fluxo de Caixa';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Trans. Type"; Enum CrnCashFlowTransType)
        {
            Caption = 'Transaction Type', Comment = 'pt-br:Tipo de Transação';
        }

        field(2; "Document No."; Code[20])
        {
            Caption = 'Document No.', Comment = 'pt-br:N.do documento';
        }

        field(3; "Trans. Date"; Date)
        {
            Caption = 'Date', Comment = 'pt-br: Data';
        }

        field(4; "Due Date"; Date)
        {
            Caption = 'Due Date', Comment = 'pt-br: Data de Vencimento';
        }

        field(5; "Description"; Text[100])
        {
            Caption = 'Description', Comment = 'pt-br: Descrição';
        }

        field(6; "Currency Code"; Code[10])
        {
            Caption = 'Currency Code', Comment = 'pt-br: Código da Moeda';
            TableRelation = Currency;
        }

        field(7; "Amount"; Decimal)
        {
            Caption = 'Amount', Comment = 'pt-br: Valor';
            AutoFormatExpression = "Currency Code";
        }

    }

    keys
    {
        key(Key1; "Trans. Type", "Document No.") { }
        key(Key2; "Trans. Type", "Trans. Date", "Due Date")
        {
            Clustered = true;
        }

    }


    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}