import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data/data_source/inventory/purchase_remote_data_source.dart';
import '../../../../data/models/response/inventory_response/product_response_model.dart';
import '../../../../data/models/response/inventory_response/purchase_add_response_model.dart';
import '../../../../data/models/response/inventory_response/purchase_response_model.dart';

part 'purchase_bloc.freezed.dart';
part 'purchase_event.dart';
part 'purchase_state.dart';

class PurchaseBloc extends Bloc<PurchaseEvent, PurchaseState> {
  final PurchaseRemoteDataSource dataSource;
  PurchaseBloc(
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

    on<_Add>((event, emit) async {
      emit(const _Loading());
      final result = await dataSource.add(
        invoiceNumber: event.invoiceNumber,
        invoiceDate: event.invoiceDate,
        supplierId: event.supplierId,
        totalPrice: event.totalPrice,
        status: event.status,
        note: event.note,
        dueDate: event.dueDate,
        items: event.items,
      );
      result.fold(
        (l) => emit(_Failed(l)),
        (r) {
          emit(_SuccessAdd(r));
          add(const _Fetch());
        },
      );
    });
  }
}
