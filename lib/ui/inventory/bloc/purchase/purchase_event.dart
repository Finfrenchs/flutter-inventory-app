part of 'purchase_bloc.dart';

@freezed
class PurchaseEvent with _$PurchaseEvent {
  const factory PurchaseEvent.started() = _Started;
  const factory PurchaseEvent.fetch() = _Fetch;
  const factory PurchaseEvent.add({
    required String invoiceNumber,
    required DateTime invoiceDate,
    required int supplierId,
    required int totalPrice,
    required int status,
    required String note,
    required DateTime dueDate,
    required List<Product> items,
  }) = _Add;
}
