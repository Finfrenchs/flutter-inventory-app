// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unit_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$UnitEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, String shortName) addUnit,
    required TResult Function() getUnits,
    required TResult Function(int id) deleteUnit,
    required TResult Function(int id, String name, String shortName) updateUnit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String shortName)? addUnit,
    TResult? Function()? getUnits,
    TResult? Function(int id)? deleteUnit,
    TResult? Function(int id, String name, String shortName)? updateUnit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String shortName)? addUnit,
    TResult Function()? getUnits,
    TResult Function(int id)? deleteUnit,
    TResult Function(int id, String name, String shortName)? updateUnit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddUnit value) addUnit,
    required TResult Function(_GetUnits value) getUnits,
    required TResult Function(_DeleteUnit value) deleteUnit,
    required TResult Function(_UpdateUnit value) updateUnit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddUnit value)? addUnit,
    TResult? Function(_GetUnits value)? getUnits,
    TResult? Function(_DeleteUnit value)? deleteUnit,
    TResult? Function(_UpdateUnit value)? updateUnit,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddUnit value)? addUnit,
    TResult Function(_GetUnits value)? getUnits,
    TResult Function(_DeleteUnit value)? deleteUnit,
    TResult Function(_UpdateUnit value)? updateUnit,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitEventCopyWith<$Res> {
  factory $UnitEventCopyWith(UnitEvent value, $Res Function(UnitEvent) then) =
      _$UnitEventCopyWithImpl<$Res, UnitEvent>;
}

/// @nodoc
class _$UnitEventCopyWithImpl<$Res, $Val extends UnitEvent>
    implements $UnitEventCopyWith<$Res> {
  _$UnitEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnitEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$UnitEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnitEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'UnitEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, String shortName) addUnit,
    required TResult Function() getUnits,
    required TResult Function(int id) deleteUnit,
    required TResult Function(int id, String name, String shortName) updateUnit,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String shortName)? addUnit,
    TResult? Function()? getUnits,
    TResult? Function(int id)? deleteUnit,
    TResult? Function(int id, String name, String shortName)? updateUnit,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String shortName)? addUnit,
    TResult Function()? getUnits,
    TResult Function(int id)? deleteUnit,
    TResult Function(int id, String name, String shortName)? updateUnit,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddUnit value) addUnit,
    required TResult Function(_GetUnits value) getUnits,
    required TResult Function(_DeleteUnit value) deleteUnit,
    required TResult Function(_UpdateUnit value) updateUnit,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddUnit value)? addUnit,
    TResult? Function(_GetUnits value)? getUnits,
    TResult? Function(_DeleteUnit value)? deleteUnit,
    TResult? Function(_UpdateUnit value)? updateUnit,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddUnit value)? addUnit,
    TResult Function(_GetUnits value)? getUnits,
    TResult Function(_DeleteUnit value)? deleteUnit,
    TResult Function(_UpdateUnit value)? updateUnit,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements UnitEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddUnitImplCopyWith<$Res> {
  factory _$$AddUnitImplCopyWith(
          _$AddUnitImpl value, $Res Function(_$AddUnitImpl) then) =
      __$$AddUnitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String shortName});
}

/// @nodoc
class __$$AddUnitImplCopyWithImpl<$Res>
    extends _$UnitEventCopyWithImpl<$Res, _$AddUnitImpl>
    implements _$$AddUnitImplCopyWith<$Res> {
  __$$AddUnitImplCopyWithImpl(
      _$AddUnitImpl _value, $Res Function(_$AddUnitImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? shortName = null,
  }) {
    return _then(_$AddUnitImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortName: null == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddUnitImpl implements _AddUnit {
  const _$AddUnitImpl({required this.name, required this.shortName});

  @override
  final String name;
  @override
  final String shortName;

  @override
  String toString() {
    return 'UnitEvent.addUnit(name: $name, shortName: $shortName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddUnitImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, shortName);

  /// Create a copy of UnitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddUnitImplCopyWith<_$AddUnitImpl> get copyWith =>
      __$$AddUnitImplCopyWithImpl<_$AddUnitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, String shortName) addUnit,
    required TResult Function() getUnits,
    required TResult Function(int id) deleteUnit,
    required TResult Function(int id, String name, String shortName) updateUnit,
  }) {
    return addUnit(name, shortName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String shortName)? addUnit,
    TResult? Function()? getUnits,
    TResult? Function(int id)? deleteUnit,
    TResult? Function(int id, String name, String shortName)? updateUnit,
  }) {
    return addUnit?.call(name, shortName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String shortName)? addUnit,
    TResult Function()? getUnits,
    TResult Function(int id)? deleteUnit,
    TResult Function(int id, String name, String shortName)? updateUnit,
    required TResult orElse(),
  }) {
    if (addUnit != null) {
      return addUnit(name, shortName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddUnit value) addUnit,
    required TResult Function(_GetUnits value) getUnits,
    required TResult Function(_DeleteUnit value) deleteUnit,
    required TResult Function(_UpdateUnit value) updateUnit,
  }) {
    return addUnit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddUnit value)? addUnit,
    TResult? Function(_GetUnits value)? getUnits,
    TResult? Function(_DeleteUnit value)? deleteUnit,
    TResult? Function(_UpdateUnit value)? updateUnit,
  }) {
    return addUnit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddUnit value)? addUnit,
    TResult Function(_GetUnits value)? getUnits,
    TResult Function(_DeleteUnit value)? deleteUnit,
    TResult Function(_UpdateUnit value)? updateUnit,
    required TResult orElse(),
  }) {
    if (addUnit != null) {
      return addUnit(this);
    }
    return orElse();
  }
}

abstract class _AddUnit implements UnitEvent {
  const factory _AddUnit(
      {required final String name,
      required final String shortName}) = _$AddUnitImpl;

  String get name;
  String get shortName;

  /// Create a copy of UnitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddUnitImplCopyWith<_$AddUnitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetUnitsImplCopyWith<$Res> {
  factory _$$GetUnitsImplCopyWith(
          _$GetUnitsImpl value, $Res Function(_$GetUnitsImpl) then) =
      __$$GetUnitsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetUnitsImplCopyWithImpl<$Res>
    extends _$UnitEventCopyWithImpl<$Res, _$GetUnitsImpl>
    implements _$$GetUnitsImplCopyWith<$Res> {
  __$$GetUnitsImplCopyWithImpl(
      _$GetUnitsImpl _value, $Res Function(_$GetUnitsImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnitEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetUnitsImpl implements _GetUnits {
  const _$GetUnitsImpl();

  @override
  String toString() {
    return 'UnitEvent.getUnits()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetUnitsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, String shortName) addUnit,
    required TResult Function() getUnits,
    required TResult Function(int id) deleteUnit,
    required TResult Function(int id, String name, String shortName) updateUnit,
  }) {
    return getUnits();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String shortName)? addUnit,
    TResult? Function()? getUnits,
    TResult? Function(int id)? deleteUnit,
    TResult? Function(int id, String name, String shortName)? updateUnit,
  }) {
    return getUnits?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String shortName)? addUnit,
    TResult Function()? getUnits,
    TResult Function(int id)? deleteUnit,
    TResult Function(int id, String name, String shortName)? updateUnit,
    required TResult orElse(),
  }) {
    if (getUnits != null) {
      return getUnits();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddUnit value) addUnit,
    required TResult Function(_GetUnits value) getUnits,
    required TResult Function(_DeleteUnit value) deleteUnit,
    required TResult Function(_UpdateUnit value) updateUnit,
  }) {
    return getUnits(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddUnit value)? addUnit,
    TResult? Function(_GetUnits value)? getUnits,
    TResult? Function(_DeleteUnit value)? deleteUnit,
    TResult? Function(_UpdateUnit value)? updateUnit,
  }) {
    return getUnits?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddUnit value)? addUnit,
    TResult Function(_GetUnits value)? getUnits,
    TResult Function(_DeleteUnit value)? deleteUnit,
    TResult Function(_UpdateUnit value)? updateUnit,
    required TResult orElse(),
  }) {
    if (getUnits != null) {
      return getUnits(this);
    }
    return orElse();
  }
}

abstract class _GetUnits implements UnitEvent {
  const factory _GetUnits() = _$GetUnitsImpl;
}

/// @nodoc
abstract class _$$DeleteUnitImplCopyWith<$Res> {
  factory _$$DeleteUnitImplCopyWith(
          _$DeleteUnitImpl value, $Res Function(_$DeleteUnitImpl) then) =
      __$$DeleteUnitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteUnitImplCopyWithImpl<$Res>
    extends _$UnitEventCopyWithImpl<$Res, _$DeleteUnitImpl>
    implements _$$DeleteUnitImplCopyWith<$Res> {
  __$$DeleteUnitImplCopyWithImpl(
      _$DeleteUnitImpl _value, $Res Function(_$DeleteUnitImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteUnitImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteUnitImpl implements _DeleteUnit {
  const _$DeleteUnitImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'UnitEvent.deleteUnit(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteUnitImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of UnitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteUnitImplCopyWith<_$DeleteUnitImpl> get copyWith =>
      __$$DeleteUnitImplCopyWithImpl<_$DeleteUnitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, String shortName) addUnit,
    required TResult Function() getUnits,
    required TResult Function(int id) deleteUnit,
    required TResult Function(int id, String name, String shortName) updateUnit,
  }) {
    return deleteUnit(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String shortName)? addUnit,
    TResult? Function()? getUnits,
    TResult? Function(int id)? deleteUnit,
    TResult? Function(int id, String name, String shortName)? updateUnit,
  }) {
    return deleteUnit?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String shortName)? addUnit,
    TResult Function()? getUnits,
    TResult Function(int id)? deleteUnit,
    TResult Function(int id, String name, String shortName)? updateUnit,
    required TResult orElse(),
  }) {
    if (deleteUnit != null) {
      return deleteUnit(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddUnit value) addUnit,
    required TResult Function(_GetUnits value) getUnits,
    required TResult Function(_DeleteUnit value) deleteUnit,
    required TResult Function(_UpdateUnit value) updateUnit,
  }) {
    return deleteUnit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddUnit value)? addUnit,
    TResult? Function(_GetUnits value)? getUnits,
    TResult? Function(_DeleteUnit value)? deleteUnit,
    TResult? Function(_UpdateUnit value)? updateUnit,
  }) {
    return deleteUnit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddUnit value)? addUnit,
    TResult Function(_GetUnits value)? getUnits,
    TResult Function(_DeleteUnit value)? deleteUnit,
    TResult Function(_UpdateUnit value)? updateUnit,
    required TResult orElse(),
  }) {
    if (deleteUnit != null) {
      return deleteUnit(this);
    }
    return orElse();
  }
}

abstract class _DeleteUnit implements UnitEvent {
  const factory _DeleteUnit(final int id) = _$DeleteUnitImpl;

  int get id;

  /// Create a copy of UnitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteUnitImplCopyWith<_$DeleteUnitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateUnitImplCopyWith<$Res> {
  factory _$$UpdateUnitImplCopyWith(
          _$UpdateUnitImpl value, $Res Function(_$UpdateUnitImpl) then) =
      __$$UpdateUnitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String name, String shortName});
}

/// @nodoc
class __$$UpdateUnitImplCopyWithImpl<$Res>
    extends _$UnitEventCopyWithImpl<$Res, _$UpdateUnitImpl>
    implements _$$UpdateUnitImplCopyWith<$Res> {
  __$$UpdateUnitImplCopyWithImpl(
      _$UpdateUnitImpl _value, $Res Function(_$UpdateUnitImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnitEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? shortName = null,
  }) {
    return _then(_$UpdateUnitImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      shortName: null == shortName
          ? _value.shortName
          : shortName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateUnitImpl implements _UpdateUnit {
  const _$UpdateUnitImpl(
      {required this.id, required this.name, required this.shortName});

  @override
  final int id;
  @override
  final String name;
  @override
  final String shortName;

  @override
  String toString() {
    return 'UnitEvent.updateUnit(id: $id, name: $name, shortName: $shortName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateUnitImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.shortName, shortName) ||
                other.shortName == shortName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, shortName);

  /// Create a copy of UnitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateUnitImplCopyWith<_$UpdateUnitImpl> get copyWith =>
      __$$UpdateUnitImplCopyWithImpl<_$UpdateUnitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, String shortName) addUnit,
    required TResult Function() getUnits,
    required TResult Function(int id) deleteUnit,
    required TResult Function(int id, String name, String shortName) updateUnit,
  }) {
    return updateUnit(id, name, shortName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String shortName)? addUnit,
    TResult? Function()? getUnits,
    TResult? Function(int id)? deleteUnit,
    TResult? Function(int id, String name, String shortName)? updateUnit,
  }) {
    return updateUnit?.call(id, name, shortName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String shortName)? addUnit,
    TResult Function()? getUnits,
    TResult Function(int id)? deleteUnit,
    TResult Function(int id, String name, String shortName)? updateUnit,
    required TResult orElse(),
  }) {
    if (updateUnit != null) {
      return updateUnit(id, name, shortName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddUnit value) addUnit,
    required TResult Function(_GetUnits value) getUnits,
    required TResult Function(_DeleteUnit value) deleteUnit,
    required TResult Function(_UpdateUnit value) updateUnit,
  }) {
    return updateUnit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddUnit value)? addUnit,
    TResult? Function(_GetUnits value)? getUnits,
    TResult? Function(_DeleteUnit value)? deleteUnit,
    TResult? Function(_UpdateUnit value)? updateUnit,
  }) {
    return updateUnit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddUnit value)? addUnit,
    TResult Function(_GetUnits value)? getUnits,
    TResult Function(_DeleteUnit value)? deleteUnit,
    TResult Function(_UpdateUnit value)? updateUnit,
    required TResult orElse(),
  }) {
    if (updateUnit != null) {
      return updateUnit(this);
    }
    return orElse();
  }
}

abstract class _UpdateUnit implements UnitEvent {
  const factory _UpdateUnit(
      {required final int id,
      required final String name,
      required final String shortName}) = _$UpdateUnitImpl;

  int get id;
  String get name;
  String get shortName;

  /// Create a copy of UnitEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateUnitImplCopyWith<_$UpdateUnitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$UnitState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Unit> units) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Unit> units)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Unit> units)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnitStateCopyWith<$Res> {
  factory $UnitStateCopyWith(UnitState value, $Res Function(UnitState) then) =
      _$UnitStateCopyWithImpl<$Res, UnitState>;
}

/// @nodoc
class _$UnitStateCopyWithImpl<$Res, $Val extends UnitState>
    implements $UnitStateCopyWith<$Res> {
  _$UnitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UnitState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$UnitStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnitState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'UnitState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Unit> units) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Unit> units)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Unit> units)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements UnitState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$UnitStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnitState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'UnitState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Unit> units) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Unit> units)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Unit> units)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements UnitState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Unit> units});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$UnitStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? units = null,
  }) {
    return _then(_$LoadedImpl(
      null == units
          ? _value._units
          : units // ignore: cast_nullable_to_non_nullable
              as List<Unit>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Unit> units) : _units = units;

  final List<Unit> _units;
  @override
  List<Unit> get units {
    if (_units is EqualUnmodifiableListView) return _units;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_units);
  }

  @override
  String toString() {
    return 'UnitState.loaded(units: $units)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._units, _units));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_units));

  /// Create a copy of UnitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      __$$LoadedImplCopyWithImpl<_$LoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Unit> units) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(units);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Unit> units)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(units);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Unit> units)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(units);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class _Loaded implements UnitState {
  const factory _Loaded(final List<Unit> units) = _$LoadedImpl;

  List<Unit> get units;

  /// Create a copy of UnitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoadedImplCopyWith<_$LoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
          _$ErrorImpl value, $Res Function(_$ErrorImpl) then) =
      __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$UnitStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of UnitState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$ErrorImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'UnitState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of UnitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Unit> units) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Unit> units)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Unit> units)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Loaded value) loaded,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Loaded value)? loaded,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Loaded value)? loaded,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements UnitState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of UnitState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
