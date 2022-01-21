page 50004 "DYAPITable"
{
    PageType = API;
    APIPublisher = 'ajk';
    APIGroup = 'demo';
    APIVersion = 'v2.0';
    EntitySetName = 'DYAPITable';
    EntityName = 'DYAPITable';
    EntitySetCaption = 'DYAPITable';
    EntityCaption = 'DYAPITable';
    ChangeTrackingAllowed = true;
    DelayedInsert = true;
    ODataKeyFields = SystemId;
    SourceTable = "DYAPITable";
    Extensible = true;

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
                // field(textField; Rec.TextField)
                // {
                //     Caption = 'TextField';
                // }

                field(textField; Rec.textField)
                {
                    Caption = 'Display Name';
                    ShowMandatory = true;

                    trigger OnValidate()
                    begin
                        RegisterFieldSet(Rec.FieldNo(textField));
                    end;
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

    actions
    {
    }




    trigger OnNewRecord(BelowxRec: Boolean)
    begin
        ClearCalculatedFields();
    end;

    var
        Currency: Record Currency;
        PaymentTerms: Record "Payment Terms";
        ShipmentMethod: Record "Shipment Method";
        PaymentMethod: Record "Payment Method";
        TempFieldSet: Record 2000000041 temporary;
        GraphMgtGeneralTools: Codeunit "Graph Mgt - General Tools";
        LCYCurrencyCode: Code[10];
        CurrencyCodeTxt: Text;
        TaxAreaDisplayNameGlobal: Text;
        CurrencyValuesDontMatchErr: Label 'The currency values do not match to a specific Currency.';
        CurrencyIdDoesNotMatchACurrencyErr: Label 'The "currencyId" does not match to a Currency.', Comment = 'currencyId is a field name and should not be translated.';
        CurrencyCodeDoesNotMatchACurrencyErr: Label 'The "currencyCode" does not match to a Currency.', Comment = 'currencyCode is a field name and should not be translated.';
        PaymentTermsIdDoesNotMatchAPaymentTermsErr: Label 'The "paymentTermsId" does not match to a Payment Terms.', Comment = 'paymentTermsId is a field name and should not be translated.';
        ShipmentMethodIdDoesNotMatchAShipmentMethodErr: Label 'The "shipmentMethodId" does not match to a Shipment Method.', Comment = 'shipmentMethodId is a field name and should not be translated.';
        PaymentMethodIdDoesNotMatchAPaymentMethodErr: Label 'The "paymentMethodId" does not match to a Payment Method.', Comment = 'paymentMethodId is a field name and should not be translated.';
        BlankGUID: Guid;
        NotProvidedCustomerNameErr: Label 'A "displayName" must be provided.', Comment = 'displayName is a field name and should not be translated.';
        BlankCustomerNameErr: Label 'The blank "displayName" is not allowed.', Comment = 'displayName is a field name and should not be translated.';



    local procedure ClearCalculatedFields()
    begin
        Clear(SystemId);
        Clear(TaxAreaDisplayNameGlobal);
        TempFieldSet.DeleteAll();
    end;

    local procedure RegisterFieldSet(FieldNo: Integer)
    begin
        if TempFieldSet.Get(Database::Customer, FieldNo) then
            exit;

        TempFieldSet.Init();
        TempFieldSet.TableNo := Database::Customer;
        TempFieldSet.Validate("No.", FieldNo);
        TempFieldSet.Insert(true);
    end;
}

