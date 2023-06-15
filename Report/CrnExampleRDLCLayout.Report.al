report 50101 CrnExampleRDLCLayout
{
    Caption = 'CrnExampleRDLCLayout';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    DefaultRenderingLayout = CrnExample_RDLCLayout;

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
        layout(CrnExample_RDLCLayout)
        {
            Type = RDLC;
            LayoutFile = './ReportLayout/CrnExample_RDLCLayout.rdl';
            Caption = 'Example_RDLCLayout';
            Summary = 'An example of an RDLC Layout.';
        }
    }
}