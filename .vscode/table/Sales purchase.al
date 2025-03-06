tableextension 50114 Purchase extends "Purchases & Payables Setup"
{
    fields
    {
        field(50114; "Kisii County"; Code[32])
        {
            DataClassification = ToBeClassified;
            Caption = 'Kisii County';
            TableRelation = "No. Series";
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        myInt: Integer;
}