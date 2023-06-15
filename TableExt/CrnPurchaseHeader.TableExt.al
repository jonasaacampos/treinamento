tableextension 50101 CrnPurchaseHeader extends "Purchase Header"
{
    fields
    {
        field(50000; "Total Gross Weight"; Decimal)
        {
            //AutoFormatExpression = "Currency Code";
            //AutoFormatType = 1;
            DecimalPlaces = 0 : 5;
            CalcFormula = Sum("Purchase Line"."Total Gross Weight" WHERE("Document Type" = FIELD("Document Type"),
                                                            "Document No." = FIELD("No.")));
            Caption = 'Total Gross Weight';
            Editable = false;
            FieldClass = FlowField;
        }
        field(50001; "Total Net Weight"; Decimal)
        {
            //AutoFormatExpression = "Currency Code";
            //AutoFormatType = 1;
            DecimalPlaces = 0 : 5;
            CalcFormula = Sum("Purchase Line"."Total Net Weight" WHERE("Document Type" = FIELD("Document Type"),
                                                            "Document No." = FIELD("No.")));
            Caption = 'Total Net Weight';
            Editable = false;
            FieldClass = FlowField;
        }
    }
}