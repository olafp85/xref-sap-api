@EndUserText.label: 'Projection View for ZI_XREF_UNIT'
@Metadata.allowExtensions: true
define view entity ZC_XREF_UNIT
  as projection on ZI_XrefUnit
{
  key InternalID,
      XrefID,
      ID,
      Sap,
      SapPackage,
      ChangedAt,

      /* Associations */
      _Xref : redirected to parent ZC_XREF
}
