report 50103 CrnExampleEXCELLayout
{
    Caption = 'CrnExampleEXCELLayout';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = ExampleEXCELLayout;

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
        layout(ExampleEXCELLayout)
        {
            Type = Excel;
            LayoutFile = './ReportLayout/CrnExampleEXCELLayout.xlsx';
            Caption = 'ExampleEXCELLayout';
            Summary = 'An example of an EXCEL Layout.';
        }
    }
}