page 50042 "Seminar Registration Subpage"
{
    Caption = 'Seminar Registration Subpage';
    PageType = ListPart;
    SourceTable = "Seminar Registration Line";
    DelayedInsert = true;
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                // Key fields excluded: "Seminar Registration No.", "Line No."
                field("Bill-to Customer No."; Rec."Bill-to Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Participant Contact No."; Rec."Participant Contact No.")
                {
                    ApplicationArea = All;
                }
                field("Participant Name"; Rec."Participant Name")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Register Date"; Rec."Register Date")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Confirmation Date"; Rec."Confirmation Date")
                {
                    ApplicationArea = All;
                }
                field("To Invoice"; Rec."To Invoice")
                {
                    ApplicationArea = All;
                }
                field(Participated; Rec.Participated)
                {
                    ApplicationArea = All;
                }
                field("Seminar Price"; Rec."Seminar Price")
                {
                    ApplicationArea = All;
                }
                field("Line Discount %"; Rec."Line Discount %")
                {
                    ApplicationArea = All;
                }
                field("Line Discount Amount"; Rec."Line Discount Amount")
                {
                    ApplicationArea = All;
                }
                field(Amount; Rec.Amount)
                {
                    ApplicationArea = All;
                }
                field(Registered; Rec.Registered)
                {
                    ApplicationArea = All;
                }
                field("Invoice No."; Rec."Invoice No.")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
            }
        }
    }
}