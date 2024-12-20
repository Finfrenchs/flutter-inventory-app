part of 'add_so_bloc.dart';

@freezed
class AddSoState with _$AddSoState {
  const factory AddSoState.initial() = _Initial;
  const factory AddSoState.loading() = _Loading;
  const factory AddSoState.success(AddSoResponseModel data) = _Success;
  const factory AddSoState.failed(String message) = _Failed;
}
