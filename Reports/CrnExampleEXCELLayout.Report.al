report 50103 CrnExampleEXCELLayout
{
    Caption = 'CrnExampleEXCELLayout';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = CrnExampleEXCELLayout;

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(CustomerNo; "No.") { }
            column(CustomerName; Name) { }
            column(City; City) { }
            column(BalanceLCY; "Balance (LCY)") { }
        }
    }

    rendering
    {
        layout(CrnExampleEXCELLayout)
        {
            Type = Excel;
            LayoutFile = './ReportsLayout/CrnExampleEXCELLayout.xlsx';
            Caption = 'ExampleEXCELLayout';
            Summary = 'An example of an EXCEL Layout.';
        }
    }
}