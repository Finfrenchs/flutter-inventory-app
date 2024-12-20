part of 'warehouse_stock_bloc.dart';

@freezed
class WarehouseStockState with _$WarehouseStockState {
  const factory WarehouseStockState.initial() = _Initial;
  const factory WarehouseStockState.loading() = _Loading;
  const factory WarehouseStockState.success(List<WarehouseStock> data) =
      _Success;
  const factory WarehouseStockState.successAdd(
      WarehouseStockAddResponseModel data) = _SuccessAdd;
  const factory WarehouseStockState.failed(String message) = _Failed;
}
