report 50107 "CrnCashFlowProvisionTrans"
{
    ApplicationArea = All;
    Caption = 'Cash Flow Provision Transactions', Comment = 'pt-br: Relatório de Fluxo de caixa';
    UsageCategory = ReportsAndAnalysis;
    PreviewMode = Normal;
    DefaultRenderingLayout = CashFlowProvisionTransWordReport;

    dataset
    {
        dataitem(CrnCashFlowProvisionTrans; CrnCashFlowProvisionTrans)
        {

            //filtros
            RequestFilterFields = "Trans. Type";

            //dados da empresa
            column(COMPANYNAME; COMPANYPROPERTY.DisplayName()) { }

            column(TransType; "Trans. Type")
            {
                IncludeCaption = true;
            }
            column(TransDate; "Trans. Date")
            {
                IncludeCaption = true;
            }
            column(DocumentNo; "Document No.")
            {
                IncludeCaption = true;
            }
            column(Description; Description)
            {
                IncludeCaption = true;
            }
            column(Amount; Amount)
            {
                IncludeCaption = true;
            }
        }
    }

    rendering
    {
        layout(CashFlowProvisionTransWordReport)
        {
            Type = Word;
            LayoutFile = 'ReportsLayout/CrnCashFlowProvisionTrans.docx';
            Caption = 'Word file', Comment = 'pt-br: Arquivlo WORD';
            Summary = 'Report .*docx', Comment = 'pt-br: Relatório .*docx';
        }

        layout(CashFlowProvisionTransRDLReport)
        {
            Type = RDLC;
            LayoutFile = 'ReportsLayout/CrnCashFlowProvisionTrans.rdl';
            Caption = 'RDLC file', Comment = 'pt-br: Arquivlo RDLC';
            Summary = 'Report .*rdl', Comment = 'pt-br: Relatório .*rdl';
        }
        layout(CashFlowProvisionTransExcelReport)
        {
            Type = Excel;
            LayoutFile = 'ReportsLayout/CrnCashFlowProvisionTrans.xlsx';
            Caption = 'Excel file', Comment = 'pt-br: Arquivlo EXCEL';
            Summary = 'Report .*xlsx', Comment = 'pt-br: Relatório .*xlsx';
        }

    }

    labels
    {
        PageLabel = 'Page', Comment = 'pt-br: Página';
        ReportTitleLabel = 'Cash Flow Provision Transactions', Comment = 'pt-br: Relatório de Fluxo de caixa';
    }


}
