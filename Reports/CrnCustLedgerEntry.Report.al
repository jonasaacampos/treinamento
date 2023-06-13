report 50101 CrnExampleRDLCLayout
{
    Caption = 'ExampleRDLCLayout';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = Example_RDLCLayout;

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
        layout(Example_RDLCLayout)
        {
            Type = RDLC;
            LayoutFile = './ReportsLayout/CrnExample_RDLCLayout.rdl';
            Caption = 'Example_RDLCLayout';
            Summary = 'An example of an RDLC Layout.';
        }
    }
}