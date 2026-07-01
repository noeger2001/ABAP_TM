@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption  booking supplement'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_booksuppl_log
  as projection on ZI_booksuppl_log
{
  key TravelId,
  key BookingId,
  key BookingSupplementId,
      SuplementId,
      _SupplementText.Description as description : localized,
      @Semantics.amount.currencyCode : 'currency'
      Price,
      Currency,
      LastChangedAt,
      /* Associations */
      _Travel  : redirected to ZC_TRAVEL_LOG,
      _Booking : redirected to parent ZC_Booking_log,
      _Product,
      _SupplementText

}
