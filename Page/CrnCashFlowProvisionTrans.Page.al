page 50102 CrnCashFlowProvisionTrans

{

    PageType = List;

    ApplicationArea = All;

    UsageCategory = Lists;

    SourceTable = CrnCashFlowProvisionTrans;

    Caption = 'Cash Flow Provision Trans', Comment = 'PTB=Transações de Provisão de Fluxo de Caixa';




    layout

    {

        area(content)

        {

            repeater(Control1)

            {




                field("Trans. Type"; Rec."Trans. Type")

                {

                    ApplicationArea = All;

                    ToolTip = 'Specifies the value of the Transaction Type field.', Comment = 'PTB=Tipo de Transação';

                }

                field("Trans. Date"; Rec."Trans. Date")

                {

                    ApplicationArea = All;

                    ToolTip = 'Specifies the value of the Date field.', Comment = 'PTB=Data';

                }

                field("Document No."; Rec."Document No.")

                {

                    ApplicationArea = All;

                    ToolTip = 'Specifies the value of the Document No. field.', Comment = 'PTB=Nº do Documento';

                }

                field(Description; Rec.Description)

                {

                    ApplicationArea = All;

                    ToolTip = 'Specifies the value of the Description field.', Comment = 'PTB=Descrição';

                }

                field("Due Date"; Rec."Due Date")

                {

                    ApplicationArea = All;

                    ToolTip = 'Specifies the value of the Due Date field.', Comment = 'PTB=Data de Vencimento';

                }

                field("Currency Code"; Rec."Currency Code")

                {

                    ApplicationArea = All;

                    ToolTip = 'Specifies the value of the Currency Code field.';

                }

                field(Amount; Rec.Amount)

                {

                    ApplicationArea = All;

                    ToolTip = 'Specifies the value of the Amount field.', Comment = 'PTB=Valor';

                }

            }

        }

    }

}