import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../data/data_source/inventory/stock_opname_remote_data_source.dart';

part 'delete_so_bloc.freezed.dart';
part 'delete_so_event.dart';
part 'delete_so_state.dart';

class DeleteSoBloc extends Bloc<DeleteSoEvent, DeleteSoState> {
  final StockOpnameRemoteDataSource dataSource;
  DeleteSoBloc(
    this.dataSource,
  ) : super(const _Initial()) {
    on<_Delete>((event, emit) async {
      emit(const _Loading());
      final result = await dataSource.delete(
        id: event.id,
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
