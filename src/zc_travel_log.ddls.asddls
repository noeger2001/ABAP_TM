@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consumption Travel'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_TRAVEL_LOG
  as projection on ZI_TRAVEL_LOG
{
  key TravelId,
      @ObjectModel.text.element: [ 'AgencyName' ]
      AgencyId,
      _Agency.Name       as AgencyName,
      @ObjectModel.text.element: [ 'CustomerName' ]
      CustomerId,
      _Customer.LastName as CustomerName,
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
      _Agency,
      _Booking : redirected to composition child ZC_Booking_log,
      _Currency,
      _Customer
}
