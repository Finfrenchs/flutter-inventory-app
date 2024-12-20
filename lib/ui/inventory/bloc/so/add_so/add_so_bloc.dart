import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../../data/data_source/inventory/stock_opname_remote_data_source.dart';
import '../../../../../data/models/response/inventory_response/add_so_response_model.dart';

part 'add_so_bloc.freezed.dart';
part 'add_so_event.dart';
part 'add_so_state.dart';

class AddSoBloc extends Bloc<AddSoEvent, AddSoState> {
  final StockOpnameRemoteDataSource dataSource;
  AddSoBloc(
    this.dataSource,
  ) : super(const _Initial()) {
    on<_Add>((event, emit) async {
      emit(const _Loading());
      final result = await dataSource.add(
        categoryId: event.categoryId,
        warehouseId: event.warehouseId,
        productId: event.productId,
        systemStock: event.systemStock,
        physicalStock: event.physicalStock,
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
