part of 'supplier_bloc.dart';

@freezed
class SupplierState with _$SupplierState {
  const factory SupplierState.initial() = _Initial;
  const factory SupplierState.loading() = _Loading;
  const factory SupplierState.loaded(List<Supplier> suppliers) = _Loaded;
  const factory SupplierState.error(String message) = _Error;
}
