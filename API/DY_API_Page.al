// POSTMAN GET
// http://servbg:7048/BC170/api/DY/DYdemo/v2.0/companies({{CompanyName}})/DYAPILines
// Extension APIs:
// https://<base URL>:<port>/<serverinstance>/api/<API publisher>/<API group>/<API version>

page 50004 "DY API Page"
{
    PageType = API;
    APIPublisher = 'DY';
    APIGroup = 'DYdemo';
    APIVersion = 'v2.0';
    EntitySetName = 'DYAPILines';
    EntityName = 'DYAPILine';
    EntitySetCaption = 'DYAPILines';
    EntityCaption = 'DYAPILine';
    ChangeTrackingAllowed = true;
    DelayedInsert = true;
    ODataKeyFields = SystemId;
    SourceTable = DYAPITable;
    Extensible = false;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field(No; Rec."No.")
                {
                    Caption = 'No.';
                }
                field(textField; Rec.TextField)
                {
                    Caption = 'TextField';
                }

                field(systemId; Rec.SystemId)
                {
                    Caption = 'SystemId';
                }
                field(systemCreatedAt; Rec.SystemCreatedAt)
                {
                    Caption = 'SystemCreatedAt';
                }
                field(systemCreatedBy; Rec.SystemCreatedBy)
                {
                    Caption = 'SystemCreatedBy';
                }
                field(systemModifiedAt; Rec.SystemModifiedAt)
                {
                    Caption = 'SystemModifiedAt';
                }
                field(systemModifiedBy; Rec.SystemModifiedBy)
                {
                    Caption = 'SystemModifiedBy';
                }
            }
        }
    }
}

