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
                    customertest := customers."No.";
                    //customers.get(customertest);
                    Message('test Balance for %1 is %2', Rec.Name, customertest);
                end;
            }
        }
        addafter(test)
        {

            // action(test1)
            // {
            //     ApplicationArea = all;
            //     trigger OnAction()
            //     begin
            //         customertest := Rec."No.";
            //         customerBal := Rec."Balance (LCY)";
            //         Message('test Balance for %1 is %2', customertest, customerBal);
            //     end;

            // }
        }
    }
    var
        customertest: Code[20];
        customerBal: Decimal;
        customers: Record Customer;

}