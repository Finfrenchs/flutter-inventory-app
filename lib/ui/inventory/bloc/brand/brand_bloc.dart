import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../data/data_source/inventory/brand_remote_datasource.dart';
import '../../../../data/models/response/inventory_response/brands_response_model.dart';

part 'brand_bloc.freezed.dart';
part 'brand_event.dart';
part 'brand_state.dart';

class BrandBloc extends Bloc<BrandEvent, BrandState> {
  final BrandRemoteDatasource brandRemoteDatasource;
  BrandBloc(
    this.brandRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetBrands>((event, emit) async {
      emit(const _Loading());
      final result = await brandRemoteDatasource.getBrands();
      result.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data ?? [])),
      );
    });
    on<_AddBrand>((event, emit) async {
      emit(const _Loading());
      final result =
          await brandRemoteDatasource.addBrand(event.name, event.image);
      result.fold(
        (l) => emit(_Error(l)),
        (r) {
          add(const _GetBrands());
        },
      );
    });

    on<_DeleteBrand>((event, emit) async {
      emit(const _Loading());
      final result = await brandRemoteDatasource.deleteBrand(event.id);
      result.fold(
        (l) => emit(_Error(l)),
        (r) {
          add(const _GetBrands());
        },
      );
    });

    on<_UpdateBrand>((event, emit) async {
      emit(const _Loading());
      final result = await brandRemoteDatasource.editBrand(
        event.id,
        event.name,
        event.image,
      );
      result.fold(
        (l) => emit(_Error(l)),
        (r) {
          add(const _GetBrands());
        },
      );
    });
  }
}
