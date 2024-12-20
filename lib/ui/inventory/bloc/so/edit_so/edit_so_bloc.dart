import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../data/data_source/inventory/stock_opname_remote_data_source.dart';
import '../../../../../data/models/response/inventory_response/add_so_response_model.dart';

part 'edit_so_bloc.freezed.dart';
part 'edit_so_event.dart';
part 'edit_so_state.dart';

class EditSoBloc extends Bloc<EditSoEvent, EditSoState> {
  final StockOpnameRemoteDataSource dataSource;
  EditSoBloc(
    this.dataSource,
  ) : super(const _Initial()) {
    on<_Edit>((event, emit) async {
      emit(const _Loading());
      final result = await dataSource.edit(
        id: event.id,
        note: event.note,
      );
      result.fold(
        (l) => emit(_Failed(l)),
        (r) {
          emit(_Success(r));
        },
      );
    });
  }
}
