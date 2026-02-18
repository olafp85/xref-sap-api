@EndUserText.label: 'Projection View for ZR_XREF'
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZC_XREF
  provider contract transactional_query
  as projection on ZR_Xref
{
  key ID,
      @Search.defaultSearchElement: true
      Type,
      @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.5
      Name,
      @Search.defaultSearchElement: true
      Component,
      Unit,
      DepthWhereUsed,
      DepthCalls,
      IncludeSapObjects,
      SapSystem,
      SapRelease,
      AnalyzedOn,
      ChangedAt,

      /* Associations */
      _Unit : redirected to composition child ZC_XREF_UNIT
}
