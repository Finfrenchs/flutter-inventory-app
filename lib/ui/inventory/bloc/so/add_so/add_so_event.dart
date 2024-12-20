part of 'add_so_bloc.dart';

@freezed
class AddSoEvent with _$AddSoEvent {
  const factory AddSoEvent.started() = _Started;
  const factory AddSoEvent.add({
    required int warehouseId,
    required int productId,
    required int systemStock,
    required int physicalStock,
    required int categoryId,
    required String note,
  }) = _Add;
}
