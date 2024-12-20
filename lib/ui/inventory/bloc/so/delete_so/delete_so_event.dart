part of 'delete_so_bloc.dart';

@freezed
class DeleteSoEvent with _$DeleteSoEvent {
  const factory DeleteSoEvent.started() = _Started;
  const factory DeleteSoEvent.delete({required int id}) = _Delete;
}
