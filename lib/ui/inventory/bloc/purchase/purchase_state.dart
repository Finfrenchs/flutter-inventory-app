part of 'purchase_bloc.dart';

@freezed
class PurchaseState with _$PurchaseState {
  const factory PurchaseState.initial() = _Initial;
  const factory PurchaseState.loading() = _Loading;
  const factory PurchaseState.success(List<Purchase> data) = _Success;
  const factory PurchaseState.successAdd(PurchaseAddResponseModel data) =
      _SuccessAdd;
  const factory PurchaseState.failed(String message) = _Failed;
}
