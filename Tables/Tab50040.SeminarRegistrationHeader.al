table 50040 "Seminar Registration Header"
{
    Caption = 'Seminar Registration Header';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
        }
        field(2; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(3; "Seminar Code"; Code[20])
        {
            Caption = 'Seminar Code';
            TableRelation = Seminar;

            trigger OnValidate()
            var
                SeminarRec: Record Seminar;
            begin
                if SeminarRec.Get("Seminar Code") then begin
                    "Seminar Name" := SeminarRec.Name;
                    "Seminar Duration" := SeminarRec."Seminar Duration";
                    "Minimum Participants" := SeminarRec."Minimum Participants";
                    "Maximum Participants" := SeminarRec."Maximum Participants";
                    "Seminar Price" := SeminarRec."Seminar Price";
                end else begin
                    "Seminar Name" := '';
                    "Seminar Duration" := 0;
                    "Minimum Participants" := 0;
                    "Maximum Participants" := 0;
                    "Seminar Price" := 0;
                end;
            end;
        }
        field(4; "Seminar Name"; Text[50])
        {
            Caption = 'Seminar Name';
        }
        field(5; "Instructor Code"; Code[20])
        {
            Caption = 'Instructor Code';
            TableRelation = Instructor;

            trigger OnValidate()
            begin
                CalcFields("Instructor Name");
            end;
        }
        field(6; "Instructor Name"; Text[100])
        {
            Caption = 'Instructor Name';
            FieldClass = FlowField;
            CalcFormula = lookup(Instructor.Name where("Code" = field("Instructor Code")));
            Editable = false;
        }
        field(7; Status; Option)
        {
            Caption = 'Status';
            OptionMembers = Planning,Registration,Finished,Cancelled;
            OptionCaption = 'Planning,Registration,Finished,Cancelled';
        }
        field(8; "Seminar Duration"; Decimal)
        {
            Caption = 'Seminar Duration';
            DecimalPlaces = 0 : 1;
        }
        field(9; "Minimum Participants"; Integer)
        {
            Caption = 'Minimum Participants';
        }
        field(10; "Maximum Participants"; Integer)
        {
            Caption = 'Maximum Participants';
        }
        field(11; "Seminar Room Code"; Code[20])
        {
            Caption = 'Seminar Room Code';
            TableRelation = "Seminar Room";

            trigger OnValidate()
            var
                SeminarRoomRec: Record "Seminar Room";
            begin
                if SeminarRoomRec.Get("Seminar Room Code") then begin
                    "Seminar Room Name" := SeminarRoomRec.Name;
                    "Seminar Room Address" := SeminarRoomRec.Address;
                    "Seminar Room Address 2" := SeminarRoomRec."Address 2";
                    "Seminar Room Post Code" := SeminarRoomRec."Post Code";
                    "Seminar Room City" := SeminarRoomRec.City;
                    "Seminar Room Phone No." := SeminarRoomRec."Phone No.";
                end else begin
                    "Seminar Room Name" := '';
                    "Seminar Room Address" := '';
                    "Seminar Room Address 2" := '';
                    "Seminar Room Post Code" := '';
                    "Seminar Room City" := '';
                    "Seminar Room Phone No." := '';
                end;
            end;
        }
        field(12; "Seminar Room Name"; Text[50])
        {
            Caption = 'Seminar Room Name';
        }
        field(13; "Seminar Room Address"; Text[50])
        {
            Caption = 'Seminar Room Address';
        }
        field(14; "Seminar Room Address 2"; Text[50])
        {
            Caption = 'Seminar Room Address 2';
        }
        field(15; "Seminar Room Post Code"; Code[20])
        {
            Caption = 'Seminar Room Post Code';
            TableRelation = "Post Code";
        }
        field(16; "Seminar Room City"; Text[30])
        {
            Caption = 'Seminar Room City';
        }
        field(17; "Seminar Room Phone No."; Text[30])
        {
            Caption = 'Seminar Room Phone No. ';
        }
        field(18; "Posting Date"; Date)
        {
            Caption = 'Posting Date';
        }
        field(19; "Seminar Price"; Decimal)
        {
            Caption = 'Seminar Price';
        }
        field(20; Amount; Decimal)
        {
            Caption = 'Amount';
            FieldClass = FlowField;
            CalcFormula = sum("Seminar Registration Line".Amount where("Seminar Registration No." = field("No.")));
            Editable = false;
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
    }
}