part of 'unit_bloc.dart';

@freezed
class UnitEvent with _$UnitEvent {
  const factory UnitEvent.started() = _Started;
  const factory UnitEvent.addUnit({
    required String name,
    required String shortName,
  }) = _AddUnit;

  const factory UnitEvent.getUnits() = _GetUnits;

  //delete unit
  const factory UnitEvent.deleteUnit(int id) = _DeleteUnit;

  //update unit
  const factory UnitEvent.updateUnit({
    required int id,
    required String name,
    required String shortName,
  }) = _UpdateUnit;
}