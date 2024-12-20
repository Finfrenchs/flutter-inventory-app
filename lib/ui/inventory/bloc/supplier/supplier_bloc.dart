import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/data_source/inventory/supplier_remote_datasource.dart';
import '../../../../data/models/response/inventory_response/supplier_response_model.dart';

part 'supplier_bloc.freezed.dart';
part 'supplier_event.dart';
part 'supplier_state.dart';

class SupplierBloc extends Bloc<SupplierEvent, SupplierState> {
  final SupplierRemoteDatasource supplierRemoteDatasource;
  SupplierBloc(
    this.supplierRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetSuppliers>((event, emit) async {
      emit(const _Loading());
      final response = await supplierRemoteDatasource.getSuppliers();
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data ?? [])),
      );
    });

    on<_AddSupplier>((event, emit) async {
      emit(const _Loading());
      final response = await supplierRemoteDatasource.add(
        event.name,
        event.phone,
        event.address,
        event.email,
      );
      response.fold(
        (l) => emit(_Error(l)),
        (r) => add(const _GetSuppliers()),
      );
    });

    on<_DeleteSupplier>((event, emit) async {
      emit(const _Loading());
      final response = await supplierRemoteDatasource.delete(event.id);
      response.fold(
        (l) => emit(_Error(l)),
        (r) => add(const _GetSuppliers()),
      );
    });

    on<_UpdateSupplier>((event, emit) async {
      emit(const _Loading());
      final response = await supplierRemoteDatasource.edit(
        event.id,
        event.name,
        event.phone,
        event.address,
        event.email,
      );
      response.fold(
        (l) => emit(_Error(l)),
        (r) => add(const _GetSuppliers()),
      );
    });
  }
}
