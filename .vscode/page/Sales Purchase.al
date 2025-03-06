pageextension 50135 Payable extends "Purchases & Payables Setup"
{
    layout
    {
        addlast("Number Series")
        {
            field("Kisii County"; Rec."Kisii County")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the kisii university';
            }
        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}