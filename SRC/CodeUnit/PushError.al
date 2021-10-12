codeunit 50200 PostError
{

    eventsubscriberinstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post", 'OnBeforePostLines', '', true, true)]
    local procedure OnBeforePostLines(var SalesLine: Record "Sales Line"; SalesHeader: Record "Sales Header"; CommitIsSuppressed: Boolean; PreviewMode: Boolean)
    begin
        salesline.CalcFields("Approval Status1");
        if SalesLine."Approval Status1" = SalesLine."Approval Status1"::"Pending Approval" then
            Error('nError %1', salesline."Approval Status1")
        else
            Message('line %1', SalesLine."No.")
    end;

}