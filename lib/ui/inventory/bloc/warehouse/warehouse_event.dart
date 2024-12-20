part of 'warehouse_bloc.dart';

@freezed
class WarehouseEvent with _$WarehouseEvent {
  const factory WarehouseEvent.started() = _Started;
  const factory WarehouseEvent.getWarehouses() = _GetWarehouses;
  const factory WarehouseEvent.addWarehouse({
    required String name,
    required String address,
    required String phone,
    required String email,
  }) = _AddWarehouse;

  //delete brand
  const factory WarehouseEvent.deleteWarehouse(int id) = _DeleteWarehouse;

  //update brand
  const factory WarehouseEvent.updateWarehouse({
    required int id,
    required String name,
    required String address,
    required String phone,
    required String email,
  }) = _UpdateWarehouse;
}