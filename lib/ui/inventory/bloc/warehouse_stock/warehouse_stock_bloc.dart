import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/data_source/inventory/warehouse_stock_remote_data_source.dart';
import '../../../../data/models/request/inventory_request/warehouse_stock_request_model.dart';
import '../../../../data/models/response/inventory_response/warehoue_stock_add_reponse_model.dart';
import '../../../../data/models/response/inventory_response/warehouse_stock_response_model.dart';

part 'warehouse_stock_event.dart';
part 'warehouse_stock_state.dart';
part 'warehouse_stock_bloc.freezed.dart';

class WarehouseStockBloc
    extends Bloc<WarehouseStockEvent, WarehouseStockState> {
  final WarehouseStockRemoteDataSource dataSource;
  WarehouseStockBloc(this.dataSource) : super(const _Initial()) {
    on<_Fetch>((event, emit) async {
      emit(const _Loading());
      final response = await dataSource.getAll();
      response.fold(
        (l) => emit(_Failed(l)),
        (r) => emit(
          _Success(r.data ?? []),
        ),
      );
    });

    on<_Add>((event, emit) async {
      emit(const _Loading());
      final response = await dataSource.add(event.dataReq);
      response.fold((l) => emit(_Failed(l)), (r) {
        emit(_SuccessAdd(r));
      });
    });
  }
}
