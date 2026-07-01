@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption Travel approval'
//@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_aTRAVEL_LOG
  as projection on ZI_TRAVEL_LOG
{
  key TravelId,
      AgencyId,
      CustomerId,
      BeginDate,
      EndDate,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      BookingFee,
      @Semantics.amount.currencyCode : 'CurrencyCode'
      TotalPrice,
      CurrencyCode,
      Description,
      OverallStatus,
      LastChangedAt,
      /* Associations */
      _Booking: redirected to composition child ZC_aBooking_log,
      _Customer
}
