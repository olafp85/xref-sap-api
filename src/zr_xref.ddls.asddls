@EndUserText.label: 'Cross References'
define root view entity ZR_Xref
  as select from zxref

  composition [0..*] of ZI_XrefUnit as _Unit

{
  key id                  as ID,
      type                as Type,
      name                as Name,
      component           as Component,
      unit                as Unit,
      depth_where_used    as DepthWhereUsed,
      depth_calls         as DepthCalls,
      @EndUserText.label: 'Incl. SAP objects'
      include_sap_objects as IncludeSapObjects,
      @EndUserText.label: 'System'
      sap_system          as SapSystem,
      sap_release         as SapRelease,
      analyzed_on         as AnalyzedOn,
      @Semantics.systemDateTime.createdAt: true
      created_at          as CreatedAt,
      @Semantics.user.createdBy: true
      created_by          as CreatedBy,
      @Semantics.systemDateTime.lastChangedAt: true
      changed_at          as ChangedAt,

      /* Associations */
      _Unit
}
