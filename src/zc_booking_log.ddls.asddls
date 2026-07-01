@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption  booking'
//@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_Booking_log
  as projection on ZI_BOOKING_LOG
{
  key TravelId,
  key BookingId,
      BookingDate,
      CustomerId,
      @ObjectModel.text.element: [ 'CarrierName']
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
      _Travel: redirected to parent ZC_TRAVEL_LOG,
      _BookingSupplement: redirected to composition child ZC_booksuppl_log ,
      _Carrier,
      _Connection,
      _Customer
      
}
