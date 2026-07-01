@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS Interface - booking'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZI_booksuppl_log as select from zbooksuppl_log as BookingSupplement
association to parent ZI_BOOKING_LOG as _Booking on $projection.TravelId  = _Booking.TravelId 
                                                and $projection.BookingId = _Booking.BookingId
association [1..1] to ZI_TRAVEL_LOG as _Travel on $projection.TravelId = _Travel.TravelId
association [1..1] to /DMO/I_Supplement as _Product on $projection.SuplementId =  _Product.SupplementID
association [1..*] to /DMO/I_SupplementText as _SupplementText on $projection.SuplementId = _SupplementText.SupplementID


{
    key travel_id as TravelId,
    key booking_id as BookingId,
    key booking_supplement_id as BookingSupplementId,
    suplement_id as SuplementId,
    @Semantics.amount.currencyCode : 'currency'
    price as Price,
    currency_code as Currency,
    last_changed_at as LastChangedAt,
    _Booking,
    _Travel,
    _Product,
    _SupplementText
}
