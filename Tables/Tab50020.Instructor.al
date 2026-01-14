table 50020 "Instructor"
{
    Caption = 'Instructor';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Name; Text[100])
        {
            Caption = 'Name';
        }
        field(3; "Worker/Subcontractor"; Option)
        {
            Caption = 'Worker/Subcontractor';
            OptionMembers = Worker,Subcontractor; // Pole typu Option
            OptionCaption = 'Worker,Subcontractor';
        }
        field(4; "Resource No."; Code[20])
        {
            Caption = 'Resource No.';
            // Relacja do tabeli 156 "Resource" z filtrem Type = Person
            TableRelation = Resource WHERE(Type = CONST(Person));
        }
        field(5; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            // Relacja do tabeli 23 "Vendor"
            TableRelation = Vendor;
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }
}