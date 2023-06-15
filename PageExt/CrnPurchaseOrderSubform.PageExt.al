pageextension 50100 CrnPurchaseOrderSubform extends "Purchase Order Subform"
{
    layout
    {
        modify("Gross Weight")
        {
            Visible = true;

            trigger OnAfterValidate()
            begin
                UpdateForm(true);
            end;
        }
        modify("Net Weight")
        {
            Visible = true;

            trigger OnAfterValidate()
            begin
                UpdateForm(true);
            end;
        }

        modify(Quantity)
        {
            trigger OnAfterValidate()
            begin
                UpdateForm(true);
            end;
        }

        moveafter(Quantity; "Net Weight")
        moveafter(Quantity; "Gross Weight")
    }
}