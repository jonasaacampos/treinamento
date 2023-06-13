report 50102 CrnExampleWORDLayout
{
    Caption = 'ExampleWORDLayout';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = ExampleWORDLayout;

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
        layout(ExampleWORDLayout)
        {
            Type = Word;
            LayoutFile = './ReportsLayout/ExampleWORDLayout.docx';
            Caption = 'ExampleWORDLayout';
            Summary = 'An example of a WORD Layout.';
        }
    }
}