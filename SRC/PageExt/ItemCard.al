pageextension 50200 "Oleg test card" extends "Item Card"
{
    layout
    {
        addafter(Description)
        {
            field("Oleg test123"; Rec."Oleg test")
            {
                ApplicationArea = all;
            }
        }
        // Add changes to page layout here
    }

}