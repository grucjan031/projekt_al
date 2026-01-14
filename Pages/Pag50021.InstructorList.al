page 50021 "Instructor List"
{
    Caption = 'Instructor List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Instructor;
    Editable = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field("Worker/Subcontractor"; Rec."Worker/Subcontractor")
                {
                    ApplicationArea = All;
                }
                field("Resource No."; Rec."Resource No.")
                {
                    ApplicationArea = All;
                }
                field("Vendor No."; Rec."Vendor No.")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}