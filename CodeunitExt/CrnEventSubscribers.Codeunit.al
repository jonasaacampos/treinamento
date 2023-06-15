codeunit 50106 CrnEventSubscribers
{
    trigger OnRun()
    begin

    end;

    /*[EventSubscriber(ObjectType::Codeunit, Codeunit::"Document Totals", 'OnAfterPurchaseCheckIfDocumentChanged', '', false, false)]
    local procedure OnAfterPurchaseCheckIfDocumentChanged(PurchaseLine: Record "Purchase Line"; xPurchaseLine: Record "Purchase Line"; var TotalsUpToDate: Boolean);
    begin
        if (PurchaseLine."Quantity" <> xPurchaseLine."Quantity") or
            (PurchaseLine."Net Weight" <> xPurchaseLine."Net Weight") or
            (PurchaseLine."Gross Weight" <> xPurchaseLine."Gross Weight") or
            (PurchaseLine."Total Net Weight" <> xPurchaseLine."Total Net Weight") or
            (PurchaseLine."Total Gross Weight" <> xPurchaseLine."Total Gross Weight")
       then
            TotalsUpToDate := false;
    end;*/

    [EventSubscriber(ObjectType::Table, DataBase::"Purchase Line", 'OnAfterValidateEvent', 'Quantity', false, false)]
    local procedure T39_OnAfterValidateQuantityEvent(var Rec: Record "Purchase Line"; var xRec: Record "Purchase Line")
    var
    begin
        Rec.UpdateWeights();
    end;

    [EventSubscriber(ObjectType::Table, DataBase::"Purchase Line", 'OnAfterValidateEvent', 'Net Weight', false, false)]
    local procedure T39_OnAfterValidateNetWeightEvent(var Rec: Record "Purchase Line"; var xRec: Record "Purchase Line")
    var
    begin
        Rec.UpdateWeights();
    end;

    [EventSubscriber(ObjectType::Table, DataBase::"Purchase Line", 'OnAfterValidateEvent', 'Gross Weight', false, false)]
    local procedure T39_OnAfterValidateGrossWeightEvent(var Rec: Record "Purchase Line"; var xRec: Record "Purchase Line")
    var
    begin
        Rec.UpdateWeights();
    end;

    /*[EventSubscriber(ObjectType::Codeunit, Codeunit::"Document Totals", 'OnCalculatePurchaseSubPageTotalsOnAfterRecalculate', '', false, false)]
    local procedure OnCalculatePurchaseSubPageTotalsOnAfterRecalculate(var TotalPurchaseLine2: Record "Purchase Line");
    begin
        TotalPurchaseLine2.CalcSums("Total Gross Weight", "Total Net Weight");
    end;*/
}