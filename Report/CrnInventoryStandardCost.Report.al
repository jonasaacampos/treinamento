report 50106 CrnInventoryStandardCost
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = InventoryStandardCostRDLC;
    Caption = 'Inventory Standard Cost', Comment = 'PTB=Custo Padrão de Itens';
    PreviewMode = Normal;

    dataset
    {
        dataitem(Item; Item)
        {
            RequestFilterFields = "No.", "Replenishment System";
            DataItemTableView = where("Costing Method" = const(Standard));

            column(COMPANYNAME; COMPANYPROPERTY.DisplayName())
            {
            }
            column(No_Item; "No.")
            {
                IncludeCaption = true;
            }
            column(Description_Item; Description)
            {
                IncludeCaption = true;
            }
            column(StandardCost_Item; "Standard Cost")
            {
                IncludeCaption = true;
            }

        }
    }

    rendering
    {
        layout(InventoryStandardCostRDLC)
        {
            Type = RDLC;
            LayoutFile = './ReportLayout/CrnInventoryStandardCost2.rdl';
            Caption = 'Inventory Standard Cost', Comment = 'PTB=Custo Padrão de Itens';
            Summary = 'Inventory Standard Cost Report', Comment = 'PTB= Relatório Custo Padrão de Itens.';
        }
    }

    labels
    {
        PageLbl = 'Page';
        ReportTitleLbl = 'Inventory Standard Cost';
        TotalLbl = 'Total';
    }
}
