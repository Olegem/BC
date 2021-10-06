page 50208 "Customer Copy"
{
    PageType = List;
    Editable = true;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Customer;
    RefreshOnActivate = true;
    QueryCategory = 'Customer List';
    CardPageId = "Customer Copy Card";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("No."; Rec."No.")
                {
                    Caption = 'Number';
                    ApplicationArea = all;

                }
                field(Name; Rec.Name)
                {
                    Caption = 'Name';
                    ApplicationArea = all;

                }
                field("Balance (LCY)"; Rec."Balance (LCY)")
                {
                    Caption = 'Balance';
                    ApplicationArea = all;

                }
            }
        }

    }

    actions
    {
        area(Processing)
        {

            action("SetTable")
            {
                ApplicationArea = All;

                trigger OnAction();
                var
                    Customer: Record Customer;
                    Number: Code[20];
                    Name: text;
                    Balance: Decimal;
                begin
                    if Customer.FindSet() then
                        repeat
                            Customer."No." := Customer."No.";
                            Customer.Name := Customer.Name;
                            Customer."Balance (LCY)" := Customer."Balance (LCY)";
                        until Customer.Next() = 0;
                end;
            }
        }
    }
}