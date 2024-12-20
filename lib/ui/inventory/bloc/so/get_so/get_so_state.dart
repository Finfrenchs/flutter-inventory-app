part of 'get_so_bloc.dart';

@freezed
class GetSoState with _$GetSoState {
  const factory GetSoState.initial() = _Initial;
  const factory GetSoState.loading() = _Loading;
  const factory GetSoState.success(List<StockOpname> data) = _Success;
  const factory GetSoState.failed(String message) = _Failed;
}
