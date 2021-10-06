codeunit 50201 PurcHeaderCopy
{

    eventsubscriberinstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Copy Document Mgt.", 'OnAfterCopyPurchaseHeader', '', true, true)]


    local procedure OnAfterCopyPurchaseHeader(var ToPurchaseHeader: Record "Purchase Header"; OldPurchaseHeader: Record "Purchase Header"; FromPurchHeader: Record "Purchase Header")
    begin
        ToPurchaseHeader.TextFieldOleg := '54321';
    end;



}