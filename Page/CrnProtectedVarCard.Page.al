/// <summary>
/// Teste de variável protected
/// Para usar a varíavel em uma extensão desta page, devemos deixar a variável como protected.
/// </summary>
page 50100 CrnProtectedVarCard
{
    SourceTable = Customer;
    PageType = Card;
    Caption = 'Proteced Var Card';

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the customer''s name.';
                }
            }
            group(Advanced)
            {
                Visible = ShowBalance;
                field(Balance; Rec.Balance)
                {
                    ApplicationArea = All;
                    ToolTip = 'Balance';
                }
            }
        }
    }

    protected var
        [InDataSet]
        ShowBalance: Boolean;


}
