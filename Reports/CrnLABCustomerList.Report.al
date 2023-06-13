report 50104 CrnLABCustomerList
{
    Caption = 'LAB Customer List';
    ApplicationArea = All;
    UsageCategory = ReportsAndAnalysis;
    PreviewMode = Normal;
    DefaultRenderingLayout = Example_EXCELLayout;

    dataset
    {
        dataitem(Customer; Customer)
        {
            DataItemTableView = sorting(Name);

            column(No; "No.")
            {
                IncludeCaption = true;
            }
            column(Name; Name)
            {
                IncludeCaption = true;
            }
            column(Balance; "Balance (LCY)")
            {
                IncludeCaption = true;
            }
        }
    }
    rendering
    {
        layout(Example_RDLCLayout)
        {
            Type = RDLC;
            LayoutFile = './ReportsLayout/LABCustomerList.rdl';
            Caption = 'LABCustomerList';
            Summary = 'An example of an RDLC Layout.';
        }
        layout(Example_WORDLayout)
        {
            Type = Word;
            LayoutFile = './ReportsLayout/Example_WORDLayout.docx';
            Caption = 'LABCustomerList';
            Summary = 'An example of an WORD Layout.';
        }
        layout(Example_EXCELLayout)
        {
            Type = Excel;
            LayoutFile = './ReportsLayout/Example_EXCELLayout.xlsx';
            Caption = 'LABCustomerList';
            Summary = 'An example of an Excel Layout.';
        }
    }
}