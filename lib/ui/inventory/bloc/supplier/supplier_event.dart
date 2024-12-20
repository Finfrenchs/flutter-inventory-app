part of 'supplier_bloc.dart';

@freezed
class SupplierEvent with _$SupplierEvent {
  const factory SupplierEvent.started() = _Started;
  const factory SupplierEvent.addSupplier({
    required String name,
    required String phone,
    required String address,
    required String email,
  }) = _AddSupplier;

  const factory SupplierEvent.getSuppliers() = _GetSuppliers;

  //delete supplier
  const factory SupplierEvent.deleteSupplier(int id) = _DeleteSupplier;

  //update supplier
  const factory SupplierEvent.updateSupplier({
    required int id,
    required String name,
    required String phone,
    required String address,
    required String email,
  }) = _UpdateSupplier;
}