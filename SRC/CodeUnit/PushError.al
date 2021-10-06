codeunit 50200 PostError
{

    eventsubscriberinstance = StaticAutomatic;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Sales-Post (Yes/No)", 'OnBeforeOnRun', '', true, true)]
    local procedure OnBeforeInitPostingDescription(var SalesHeader: Record "Sales Header")

    begin
        Message('Error');
    end;
}