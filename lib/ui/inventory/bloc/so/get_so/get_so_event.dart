part of 'get_so_bloc.dart';

@freezed
class GetSoEvent with _$GetSoEvent {
  const factory GetSoEvent.started() = _Started;
  const factory GetSoEvent.fetch() = _Fetch;
}
