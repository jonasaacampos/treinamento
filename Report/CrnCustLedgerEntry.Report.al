report 50100 CrnCustLedgerEntry
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    RDLCLayout = 'ReportLayout/CrnCustLedgerEntry.rdl';
    Caption = 'CrnCustLedgerEntry';

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