report 50106 CrnInventoryStandardCost
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = InventoryStandardCost;
    Caption = 'Inventory Standard Cost';

    dataset
    {
        dataitem(Item; Item)
        {

            RequestFilterFields = "No.", "Replenishment System";
            DataItemTableView = where("Costing Method" = const(Standard));

            column(COMPANYNAME; CompanyProperty.Displayname) { }


            column(No_Item;
            "No.")
            {
                IncludeCaption = true;
            }
            column(Description_Item; Description)
            {
                IncludeCaption = true;
            }
            column(CostingMethod_Item; "Costing Method")
            {
                IncludeCaption = true;

            }
            column(StandardCost_Item; "Standard Cost")
            {
                IncludeCaption = true;

            }

        }
    }
    requestpage
    {
        SaveValues = true;
    }

    rendering
    {
        layout(InventoryStandardCost)
        {
            Type = RDLC;
            LayoutFile = './ReportsLayout/InventoryStandardCost.rdl';
        }
    }

    var
        myInt: Integer;
}