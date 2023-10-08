@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Ventas'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity zc_clnts_lib_5717
  as select from zclnts_lib_5717
{
  key id_libro                   as IdLibro,
      count(distinct id_cliente) as Ventas

}
group by
  id_libro;
