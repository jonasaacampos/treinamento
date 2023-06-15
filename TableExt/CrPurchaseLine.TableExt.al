/// <summary>
/// 
/// </summary>
tableextension 50100 CrPurchaseLine extends "Purchase Line"
{
    
    fields
    {
        field(50000; "Total Gross Weight"; Decimal)
        {
            Caption = 'Total Gross Weight';
            DecimalPlaces = 0 : 5;
        }
        field(50001; "Total Net Weight"; Decimal)
        {
            Caption = 'Total Net Weight';
            DecimalPlaces = 0 : 5;
        }
    }

     
    procedure UpdateWeights()
    var
    begin
        "Total Gross Weight" := "Gross Weight" * Quantity;
        

        "Total Net Weight" := "Net Weight" * Quantity;
    end;
}