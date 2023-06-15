page 50105 CrnCashFlowProvisionTransAPI

{
    PageType = API;
    Caption = 'Cash Flow Provision Trans API', Comment = 'PTB=API Transações de Provisão de Fluxo de Caixa';
    APIPublisher = 'grvppe';
    APIGroup = 'cronus';
    APIVersion = 'v1.0';
    EntityName = 'cashFlowProvisionTrans';
    EntitySetName = 'cashFlowProvisionTransSet';
    SourceTable = CrnCashFlowProvisionTrans;
    DelayedInsert = true;
    ODataKeyFields = SystemId;

    //http://172.16.10.25:7048/JAAC/API/grvppe/cronus/v1.0/cashFlowProvisionTransSet
    //http://172.16.10.25:7048/jaac/api/grvppe/cronus/v1.0/cashFlowProvisionTransSet

    layout

    {

        area(content)

        {

            repeater(Control1)

            {

                field(systemId; Rec.SystemId)

                {

                    Caption = 'SystemId';

                    Editable = false;

                    ApplicationArea = All;

                }

                field(transType; Rec."Trans. Type")

                {

                    Caption = 'Transaction Type', Comment = 'PTB=Tipo de Transação';

                    ApplicationArea = All;

                }

                field(transDate; Rec."Trans. Date")

                {

                    Caption = 'Date', Comment = 'PTB=Data';

                    ApplicationArea = All;

                }

                field(documentNo; Rec."Document No.")

                {

                    Caption = 'Document No.', Comment = 'PTB=Nº do Documento';

                    ApplicationArea = All;

                }

                field(description; Rec.Description)

                {

                    Caption = 'Description', Comment = 'PTB=Descrição';

                    ApplicationArea = All;

                }

                field(dueDate; Rec."Due Date")

                {

                    Caption = 'Due Date', Comment = 'PTB=Data de Vencimento';

                    ApplicationArea = All;

                }

                field(currencyCode; Rec."Currency Code")

                {

                    Caption = 'Currency Code';

                    ApplicationArea = All;

                }

                field(amount; Rec.Amount)

                {

                    Caption = 'Amount', Comment = 'PTB=Valor';

                    ApplicationArea = All;

                }

            }

        }

    }

}