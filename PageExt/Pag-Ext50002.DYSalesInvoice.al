pageextension 50002 "DY Sales Invoice" extends "Sales Invoice"
{
    layout
    {
        addlast(General)
        {
            field(WebshopReferenceIdAJK; Rec.WebshopReferenceIdAJK)
            {
                ToolTip = 'Specifies the value of the WebshopReferenceIdAJK field.';
                ApplicationArea = All;
            }
        }
    }
}
