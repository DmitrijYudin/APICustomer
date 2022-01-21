page 50001 "DYAPITable ini"
{
    ApplicationArea = All;
    Caption = 'DYAPITable';
    PageType = List;
    SourceTable = "DYAPITable";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ToolTip = 'Specifies the value of the No. field.';
                    ApplicationArea = All;
                }
                field(TextField; Rec.TextField)
                {
                    ToolTip = 'Specifies the value of the TextField field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
