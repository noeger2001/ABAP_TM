@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption  booking approval'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_aBooking_log
  as projection on ZI_BOOKING_LOG
{
  key TravelId,
  key BookingId,
      BookingDate,
      CustomerId,
      @ObjectModel.text.element: [ 'CarrierName' ]
      CarrierId,
      _Carrier.Name as CarrierName,
      ConnectionId,
      FlightDate,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      FlightPrice,
      CurrencyCode,
      BookingStatus,
      LastChangedAt,
      /* Associations */
      _Travel : redirected to parent ZC_aTRAVEL_LOG,
      _Customer,
      _Carrier

}
