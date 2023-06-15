pageextension 50101 CrnPurchaseOrder extends "Purchase Order"
{
    layout
    {
        addafter("Ship-to City")
        {
            field("Total Gross Weight"; Rec."Total Gross Weight")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Total Gross Weight field.';
            }
            field("Total Net Weight"; Rec."Total Net Weight")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Total Net Weight field.';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}