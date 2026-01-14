page 50070 "Seminar Manager RC"
{
    PageType = RoleCenter;
    Caption = 'Seminar Manager';

    layout
    {
    }

    actions
    {
        area(Sections)
        {
            group(Lists)
            {
                Caption = 'Lists';
                action(OpenSeminars)
                {
                    ApplicationArea = All;
                    Caption = 'Seminars';
                    RunObject = page "Seminar List";
                }
                action(OpenInstructors)
                {
                    ApplicationArea = All;
                    Caption = 'Instructors';
                    RunObject = page "Instructor List";
                }
                action(OpenSeminarRooms)
                {
                    ApplicationArea = All;
                    Caption = 'Seminar rooms';
                    RunObject = page "Seminar Room List";
                }
                action(OpenSeminarRegistrations)
                {
                    ApplicationArea = All;
                    Caption = 'Seminar register';
                    RunObject = page "Seminar Registration List";
                }
            }
        }
    }
}

profile "Manager szkoleń"
{
    Caption = 'Seminar Manager';
    RoleCenter = "Seminar Manager RC";
}