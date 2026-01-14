page 50031 "Seminar Room Card"
{
    Caption = 'Seminar Room Card';
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = "Seminar Room";
    DataCaptionFields = "Code", Name;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;
                }
                field(Address; Rec.Address)
                {
                    ApplicationArea = All;
                }
                field("Address 2"; Rec."Address 2")
                {
                    ApplicationArea = All;
                }
                field(City; Rec.City)
                {
                    ApplicationArea = All;
                }
                field("Post Code"; Rec."Post Code")
                {
                    ApplicationArea = All;
                }
                field("Country/Region Code"; Rec."Country/Region Code")
                {
                    ApplicationArea = All;
                }
                field("Maximum Participants"; Rec."Maximum Participants")
                {
                    ApplicationArea = All;
                }
                field("Internal/External"; Rec."Internal/External")
                {
                    ApplicationArea = All;
                }
            }

            group(Communication)
            {
                Caption = 'Communication';
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                }
                field("Fax No."; Rec."Fax No.")
                {
                    ApplicationArea = All;
                }
                field("Name 2"; Rec."Name 2")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}