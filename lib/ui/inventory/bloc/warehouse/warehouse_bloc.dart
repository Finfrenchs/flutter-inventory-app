import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/data_source/inventory/warehouse_remote_datasource.dart';
import '../../../../data/models/response/inventory_response/warehouse_response_model.dart';

part 'warehouse_bloc.freezed.dart';
part 'warehouse_event.dart';
part 'warehouse_state.dart';

class WarehouseBloc extends Bloc<WarehouseEvent, WarehouseState> {
  final WarehouseRemoteDatasource warehouseRemoteDatasource;
  WarehouseBloc(
    this.warehouseRemoteDatasource,
  ) : super(const _Initial()) {
    on<_AddWarehouse>((event, emit) async {
      emit(const _Loading());
      final result = await warehouseRemoteDatasource.add(
        event.name,
        event.address,
        event.phone,
        event.email,
      );
      result.fold(
        (l) => emit(_Error(l)),
        (r) {
          add(const _GetWarehouses());
        },
      );
    });

    on<_GetWarehouses>((event, emit) async {
      emit(const _Loading());
      final result = await warehouseRemoteDatasource.getAll();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data ?? [])),
      );
    });

    on<_DeleteWarehouse>((event, emit) async {
      emit(const _Loading());
      final result = await warehouseRemoteDatasource.delete(event.id);
      result.fold(
        (l) => emit(_Error(l)),
        (r) {
          add(const _GetWarehouses());
        },
      );
    });

    on<_UpdateWarehouse>((event, emit) async {
      emit(const _Loading());
      final result = await warehouseRemoteDatasource.edit(
        event.id,
        event.name,
        event.address,
        event.phone,
        event.email,
      );
      result.fold(
        (l) => emit(_Error(l)),
        (r) {
          add(const _GetWarehouses());
        },
      );
    });
  }
}
