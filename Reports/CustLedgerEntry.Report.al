report 50100 CustLedgerEntry
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = 'ReportsLayout/CustLedgerEntry.rdl';
    Caption = 'CustLedgerEntry';

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(CustomerNo; "No.")
            {
            }
            column(CustomerName; Name)
            {
            }
            dataitem(CustomerLedgers; "Cust. Ledger Entry")
            {
                DataItemLinkReference = Customer;
                DataItemLink = "Customer No." = field("No.");
                column(CustomerLedgersCustomerNo; "Customer No.")
                {
                }
                column(CustomerLedgersAmountLCY; "Amount (LCY)")
                {
                }
            }
        }
    }

}