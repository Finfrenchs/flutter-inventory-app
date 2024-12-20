part of 'edit_so_bloc.dart';

@freezed
class EditSoState with _$EditSoState {
  const factory EditSoState.initial() = _Initial;
  const factory EditSoState.loading() = _Loading;
  const factory EditSoState.success(AddSoResponseModel data) = _Success;
  const factory EditSoState.failed(String message) = _Failed;
}
