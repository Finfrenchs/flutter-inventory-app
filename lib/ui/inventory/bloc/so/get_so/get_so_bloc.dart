import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../data/data_source/inventory/stock_opname_remote_data_source.dart';
import '../../../../../data/models/response/inventory_response/stock_opnames_response_model.dart';

part 'get_so_bloc.freezed.dart';
part 'get_so_event.dart';
part 'get_so_state.dart';

class GetSoBloc extends Bloc<GetSoEvent, GetSoState> {
  final StockOpnameRemoteDataSource dataSource;
  GetSoBloc(
    this.dataSource,
  ) : super(const _Initial()) {
    on<_Fetch>((event, emit) async {
      emit(const _Loading());
      final result = await dataSource.getAll();
      result.fold(
        (l) => emit(_Failed(l)),
        (r) => emit(_Success(r.data ?? [])),
      );
    });
  }
}
