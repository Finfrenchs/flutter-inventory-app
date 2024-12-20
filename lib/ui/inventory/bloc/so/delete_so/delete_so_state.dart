part of 'delete_so_bloc.dart';

@freezed
class DeleteSoState with _$DeleteSoState {
  const factory DeleteSoState.initial() = _Initial;
  const factory DeleteSoState.loading() = _Loading;
  const factory DeleteSoState.success(String message) = _Success;
  const factory DeleteSoState.failed(String message) = _Failed;
}
