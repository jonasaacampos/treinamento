pageextension 50103 CrnBusinessManagerRoleCenter extends "Business Manager Role Center"
{
    actions
    {
        addlast(Action41)
        {
            action(CrnInventoryStandardCost)
            {
                ApplicationArea = All;
                Caption = 'Inventory Standard Cost', Comment='PTB=';
                RunObject = Report CrnInventoryStandardCost;
                ToolTip = 'View Inventory Standard Cost';
            }
        }
    }
}