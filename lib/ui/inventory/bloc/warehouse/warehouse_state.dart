part of 'warehouse_bloc.dart';

@freezed
class WarehouseState with _$WarehouseState {
  const factory WarehouseState.initial() = _Initial;
  const factory WarehouseState.loading() = _Loading;
  const factory WarehouseState.loaded(List<Warehouse> data) = _Loaded;
  const factory WarehouseState.error(String message) = _Error;
}
