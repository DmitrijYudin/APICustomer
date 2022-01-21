pageextension 50001 "Customer Card Ext For API" extends "Customer Card"
{
    layout
    {
        addlast(General)
        {
            field(ShoeSizeAJK; Rec.ShoeSizeAJK)
            {
                ToolTip = 'Specifies the value of the ShoeSizeAJK field.';
                ApplicationArea = All;
            }
            field(HairColorAJK; Rec.HairColorAJK)
            {
                ToolTip = 'Specifies the value of the HairColorAJK field.';
                ApplicationArea = All;
            }
        }
    }
}
