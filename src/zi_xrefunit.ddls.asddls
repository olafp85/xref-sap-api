@EndUserText.label: 'Unit'
define view entity ZI_XrefUnit
  as select from zxref_unit as Unit

  association to parent ZR_Xref as _Xref on $projection.XrefID = _Xref.ID
{
  key internal_id as InternalID,
      xref_id     as XrefID,
      id          as ID,
      @EndUserText.label: 'Std SAP'
      sap         as Sap,
      @EndUserText.label: 'Package'
      sap_package as SapPackage,
      @Semantics.systemDateTime.lastChangedAt: true
      changed_at  as ChangedAt,

      /* Associations */
      _Xref
}
