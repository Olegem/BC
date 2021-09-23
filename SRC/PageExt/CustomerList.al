pageextension 50202 "Customer List Ext" extends "Customer List"
{
    actions
    {
        addafter("Sales Journal")
        {
            action(test)
            {
                ApplicationArea = all;
                trigger OnAction()
                begin

                    Message('test Balance for %1 is %2', Rec.Name, Rec."Balance (LCY)");
                end;
            }
        }

    }

}