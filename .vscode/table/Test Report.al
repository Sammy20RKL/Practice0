table 50121 "Navigation"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'No.';
            Editable = false;

            trigger OnValidate()
            begin
                if "No." <> xRec."No." then begin
                    PurchaseSale.Get();
                    NoSeriesMgmt.TestManual(PurchaseSale."Kisii County");
                    "No. Series" := '';
                end;

            end;
        }
        field(2; Description; Text[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';
        }
        field(3; "No. Series"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'No. Series';
        }
        field(4; Status; Enum navigate)
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
        PurchaseSale: Record "Purchases & Payables Setup";
        NoSeriesMgmt: Codeunit NoSeriesManagement;


    trigger OnInsert()
    begin
        if "No." = '' then begin
            PurchaseSale.Get();
            PurchaseSale.TestField("Kisii County");
            NoSeriesMgmt.InitSeries(PurchaseSale."Kisii County", xRec."No. Series", 0D, "No.", "No. Series");

        end;
    end;



}