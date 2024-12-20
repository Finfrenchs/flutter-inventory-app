part of 'warehouse_stock_bloc.dart';

@freezed
class WarehouseStockEvent with _$WarehouseStockEvent {
  const factory WarehouseStockEvent.started() = _Started;
  const factory WarehouseStockEvent.fetch() = _Fetch;
  const factory WarehouseStockEvent.add(WarehouseStockRequestModel dataReq) =
      _Add;
}
