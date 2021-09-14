tableextension 50200 "Oleg test field" extends Item
{
    fields
    {
        // Add changes to table fields here
        field(50200; "Oleg test"; Date)
        {
            // Caption = 'Oleg test1';
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}