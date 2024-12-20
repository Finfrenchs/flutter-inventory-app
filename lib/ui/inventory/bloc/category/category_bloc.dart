import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';

import '../../../../data/data_source/inventory/category_remote_datasource.dart';
import '../../../../data/models/response/inventory_response/category_response_model.dart';

part 'category_bloc.freezed.dart';
part 'category_event.dart';
part 'category_state.dart';

class CategoryBloc extends Bloc<CategoryEvent, CategoryState> {
  final CategoryRemoteDatasource categoryRemoteDatasource;
  CategoryBloc(
    this.categoryRemoteDatasource,
  ) : super(const _Initial()) {
    on<_GetCategories>((event, emit) async {
      emit(const _Loading());
      final response = await categoryRemoteDatasource.getCategories();
      response.fold(
        (l) => emit(_Error(l)),
        (r) => emit(_Loaded(r.data ?? [])),
      );
    });

    on<_AddCategory>((event, emit) async {
      emit(const _Loading());
      final response = await categoryRemoteDatasource.add(
        event.name,
        event.image,
      );
      response.fold(
        (l) => emit(_Error(l)),
        (r) => add(const _GetCategories()),
      );
    });

    on<_DeleteCategory>((event, emit) async {
      emit(const _Loading());
      final response = await categoryRemoteDatasource.delete(event.id);
      response.fold(
        (l) => emit(_Error(l)),
        (r) => add(const _GetCategories()),
      );
    });

    on<_UpdateCategory>((event, emit) async {
      emit(const _Loading());
      final response = await categoryRemoteDatasource.edit(
        event.id,
        event.name,
        event.image,
      );
      response.fold(
        (l) => emit(_Error(l)),
        (r) => add(const _GetCategories()),
      );
    });
  }
}
