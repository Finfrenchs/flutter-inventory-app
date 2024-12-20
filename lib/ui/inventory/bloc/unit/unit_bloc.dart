import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/data_source/inventory/unit_remote_datasource.dart';
import '../../../../data/models/response/inventory_response/unit_response_model.dart';

part 'unit_bloc.freezed.dart';
part 'unit_event.dart';
part 'unit_state.dart';

class UnitBloc extends Bloc<UnitEvent, UnitState> {
  final UnitRemoteDatasource unitRemoteDatasource;
  UnitBloc(
    this.unitRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetUnits>((event, emit) async {
      emit(const _Loading());
      final result = await unitRemoteDatasource.getUnits();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data ?? [])),
      );
    });

    on<_AddUnit>((event, emit) async {
      emit(const _Loading());
      final result =
          await unitRemoteDatasource.add(event.name, event.shortName);
      result.fold(
        (l) => emit(_Error(l)),
        (r) {
          add(const _GetUnits());
        },
      );
    });

    on<_DeleteUnit>((event, emit) async {
      emit(const _Loading());
      final result = await unitRemoteDatasource.delete(event.id);
      result.fold(
        (l) => emit(_Error(l)),
        (r) {
          add(const _GetUnits());
        },
      );
    });

    on<_UpdateUnit>((event, emit) async {
      emit(const _Loading());
      final result = await unitRemoteDatasource.edit(
        event.id,
        event.name,
        event.shortName,
      );
      result.fold(
        (l) => emit(_Error(l)),
        (r) {
          add(const _GetUnits());
        },
      );
    });
  }
}
