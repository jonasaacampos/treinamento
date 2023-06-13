report 50105 CrnExampleDataItemsJoin
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = './ReportsLayout/CrnExampleDataItemsJoin.rdl';
    DefaultLayout = RDLC;

    dataset
    {
        dataitem(Customer; Customer)
        {
            PrintOnlyIfDetail = true;
            RequestFilterFields = "No.", "Search Name", "Customer Posting Group";
            column(CustomerNo; "No.")
            {
                IncludeCaption = true;
            }
            column(CustomerName; Name)
            {
                IncludeCaption = true;
            }
            column(CustomerBlocked; Blocked)
            {
                IncludeCaption = true;
            }
            dataitem(CustomerLedgers; "Cust. Ledger Entry")
            {
                DataItemLinkReference = Customer;
                DataItemLink = "Customer No." = field("No.");
                DataItemTableView = sorting("Customer No.");
                column(CustomerLedgersCustomerNo; "Customer No.")
                {
                    IncludeCaption = true;
                }
                column(CustomerLedgersAmountLCY; "Amount (LCY)")
                {
                    IncludeCaption = true;
                }
            }
            trigger OnPreDataItem()
            begin
                if HideBlockedCustomers then
                    Customer.SetRange(Blocked, Blocked::" ");
            end;
        }
    }
    requestpage
    {
        SaveValues = true;
        layout
        {
            area(Content)
            {
                group(Options)
                {
                    field(FldHideBlockedCustomers; HideBlockedCustomers)
                    {
                        ApplicationArea = All;
                        Caption = 'Hide Blocked Customers?';
                        ToolTip = '...';
                    }
                }
            }
        }
    }
    var
        HideBlockedCustomers: Boolean;
}