part of 'edit_so_bloc.dart';

@freezed
class EditSoEvent with _$EditSoEvent {
  const factory EditSoEvent.started() = _Started;
  const factory EditSoEvent.edit({
    required int id,
    required String note,
  }) = _Edit;
}
