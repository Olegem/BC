pageextension 50203 PurchHeader extends "Purchase Invoice"
{
    layout
    {
        addafter("Posting Date")
        {
            field(TextFieldOleg; Rec.TextFieldOleg)
            {
                //Caption = 'Text2';
                ApplicationArea = all;
            }
        }
        // Add changes to page layout here
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}