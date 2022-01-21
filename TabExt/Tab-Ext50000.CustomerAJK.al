tableextension 50000 CustomerAJK extends Customer
{
    fields
    {
        field(50000; ShoeSizeAJK; Integer)
        {
            Caption = 'ShoeSizeAJK';
            DataClassification = CustomerContent;
        }
        field(50001; HairColorAJK; Text[30])
        {
            Caption = 'HairColorAJK';
            DataClassification = CustomerContent;
        }
    }
}
