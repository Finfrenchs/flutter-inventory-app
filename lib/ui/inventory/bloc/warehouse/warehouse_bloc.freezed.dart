// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'warehouse_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WarehouseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getWarehouses,
    required TResult Function(
            String name, String address, String phone, String email)
        addWarehouse,
    required TResult Function(int id) deleteWarehouse,
    required TResult Function(
            int id, String name, String address, String phone, String email)
        updateWarehouse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getWarehouses,
    TResult? Function(String name, String address, String phone, String email)?
        addWarehouse,
    TResult? Function(int id)? deleteWarehouse,
    TResult? Function(
            int id, String name, String address, String phone, String email)?
        updateWarehouse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getWarehouses,
    TResult Function(String name, String address, String phone, String email)?
        addWarehouse,
    TResult Function(int id)? deleteWarehouse,
    TResult Function(
            int id, String name, String address, String phone, String email)?
        updateWarehouse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetWarehouses value) getWarehouses,
    required TResult Function(_AddWarehouse value) addWarehouse,
    required TResult Function(_DeleteWarehouse value) deleteWarehouse,
    required TResult Function(_UpdateWarehouse value) updateWarehouse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetWarehouses value)? getWarehouses,
    TResult? Function(_AddWarehouse value)? addWarehouse,
    TResult? Function(_DeleteWarehouse value)? deleteWarehouse,
    TResult? Function(_UpdateWarehouse value)? updateWarehouse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetWarehouses value)? getWarehouses,
    TResult Function(_AddWarehouse value)? addWarehouse,
    TResult Function(_DeleteWarehouse value)? deleteWarehouse,
    TResult Function(_UpdateWarehouse value)? updateWarehouse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WarehouseEventCopyWith<$Res> {
  factory $WarehouseEventCopyWith(
          WarehouseEvent value, $Res Function(WarehouseEvent) then) =
      _$WarehouseEventCopyWithImpl<$Res, WarehouseEvent>;
}

/// @nodoc
class _$WarehouseEventCopyWithImpl<$Res, $Val extends WarehouseEvent>
    implements $WarehouseEventCopyWith<$Res> {
  _$WarehouseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseEvent
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
    extends _$WarehouseEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'WarehouseEvent.started()';
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
    required TResult Function() getWarehouses,
    required TResult Function(
            String name, String address, String phone, String email)
        addWarehouse,
    required TResult Function(int id) deleteWarehouse,
    required TResult Function(
            int id, String name, String address, String phone, String email)
        updateWarehouse,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getWarehouses,
    TResult? Function(String name, String address, String phone, String email)?
        addWarehouse,
    TResult? Function(int id)? deleteWarehouse,
    TResult? Function(
            int id, String name, String address, String phone, String email)?
        updateWarehouse,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getWarehouses,
    TResult Function(String name, String address, String phone, String email)?
        addWarehouse,
    TResult Function(int id)? deleteWarehouse,
    TResult Function(
            int id, String name, String address, String phone, String email)?
        updateWarehouse,
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
    required TResult Function(_GetWarehouses value) getWarehouses,
    required TResult Function(_AddWarehouse value) addWarehouse,
    required TResult Function(_DeleteWarehouse value) deleteWarehouse,
    required TResult Function(_UpdateWarehouse value) updateWarehouse,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetWarehouses value)? getWarehouses,
    TResult? Function(_AddWarehouse value)? addWarehouse,
    TResult? Function(_DeleteWarehouse value)? deleteWarehouse,
    TResult? Function(_UpdateWarehouse value)? updateWarehouse,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetWarehouses value)? getWarehouses,
    TResult Function(_AddWarehouse value)? addWarehouse,
    TResult Function(_DeleteWarehouse value)? deleteWarehouse,
    TResult Function(_UpdateWarehouse value)? updateWarehouse,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements WarehouseEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$GetWarehousesImplCopyWith<$Res> {
  factory _$$GetWarehousesImplCopyWith(
          _$GetWarehousesImpl value, $Res Function(_$GetWarehousesImpl) then) =
      __$$GetWarehousesImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetWarehousesImplCopyWithImpl<$Res>
    extends _$WarehouseEventCopyWithImpl<$Res, _$GetWarehousesImpl>
    implements _$$GetWarehousesImplCopyWith<$Res> {
  __$$GetWarehousesImplCopyWithImpl(
      _$GetWarehousesImpl _value, $Res Function(_$GetWarehousesImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetWarehousesImpl implements _GetWarehouses {
  const _$GetWarehousesImpl();

  @override
  String toString() {
    return 'WarehouseEvent.getWarehouses()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetWarehousesImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getWarehouses,
    required TResult Function(
            String name, String address, String phone, String email)
        addWarehouse,
    required TResult Function(int id) deleteWarehouse,
    required TResult Function(
            int id, String name, String address, String phone, String email)
        updateWarehouse,
  }) {
    return getWarehouses();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getWarehouses,
    TResult? Function(String name, String address, String phone, String email)?
        addWarehouse,
    TResult? Function(int id)? deleteWarehouse,
    TResult? Function(
            int id, String name, String address, String phone, String email)?
        updateWarehouse,
  }) {
    return getWarehouses?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getWarehouses,
    TResult Function(String name, String address, String phone, String email)?
        addWarehouse,
    TResult Function(int id)? deleteWarehouse,
    TResult Function(
            int id, String name, String address, String phone, String email)?
        updateWarehouse,
    required TResult orElse(),
  }) {
    if (getWarehouses != null) {
      return getWarehouses();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetWarehouses value) getWarehouses,
    required TResult Function(_AddWarehouse value) addWarehouse,
    required TResult Function(_DeleteWarehouse value) deleteWarehouse,
    required TResult Function(_UpdateWarehouse value) updateWarehouse,
  }) {
    return getWarehouses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetWarehouses value)? getWarehouses,
    TResult? Function(_AddWarehouse value)? addWarehouse,
    TResult? Function(_DeleteWarehouse value)? deleteWarehouse,
    TResult? Function(_UpdateWarehouse value)? updateWarehouse,
  }) {
    return getWarehouses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetWarehouses value)? getWarehouses,
    TResult Function(_AddWarehouse value)? addWarehouse,
    TResult Function(_DeleteWarehouse value)? deleteWarehouse,
    TResult Function(_UpdateWarehouse value)? updateWarehouse,
    required TResult orElse(),
  }) {
    if (getWarehouses != null) {
      return getWarehouses(this);
    }
    return orElse();
  }
}

abstract class _GetWarehouses implements WarehouseEvent {
  const factory _GetWarehouses() = _$GetWarehousesImpl;
}

/// @nodoc
abstract class _$$AddWarehouseImplCopyWith<$Res> {
  factory _$$AddWarehouseImplCopyWith(
          _$AddWarehouseImpl value, $Res Function(_$AddWarehouseImpl) then) =
      __$$AddWarehouseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String address, String phone, String email});
}

/// @nodoc
class __$$AddWarehouseImplCopyWithImpl<$Res>
    extends _$WarehouseEventCopyWithImpl<$Res, _$AddWarehouseImpl>
    implements _$$AddWarehouseImplCopyWith<$Res> {
  __$$AddWarehouseImplCopyWithImpl(
      _$AddWarehouseImpl _value, $Res Function(_$AddWarehouseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? address = null,
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_$AddWarehouseImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddWarehouseImpl implements _AddWarehouse {
  const _$AddWarehouseImpl(
      {required this.name,
      required this.address,
      required this.phone,
      required this.email});

  @override
  final String name;
  @override
  final String address;
  @override
  final String phone;
  @override
  final String email;

  @override
  String toString() {
    return 'WarehouseEvent.addWarehouse(name: $name, address: $address, phone: $phone, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddWarehouseImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, address, phone, email);

  /// Create a copy of WarehouseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddWarehouseImplCopyWith<_$AddWarehouseImpl> get copyWith =>
      __$$AddWarehouseImplCopyWithImpl<_$AddWarehouseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getWarehouses,
    required TResult Function(
            String name, String address, String phone, String email)
        addWarehouse,
    required TResult Function(int id) deleteWarehouse,
    required TResult Function(
            int id, String name, String address, String phone, String email)
        updateWarehouse,
  }) {
    return addWarehouse(name, address, phone, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getWarehouses,
    TResult? Function(String name, String address, String phone, String email)?
        addWarehouse,
    TResult? Function(int id)? deleteWarehouse,
    TResult? Function(
            int id, String name, String address, String phone, String email)?
        updateWarehouse,
  }) {
    return addWarehouse?.call(name, address, phone, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getWarehouses,
    TResult Function(String name, String address, String phone, String email)?
        addWarehouse,
    TResult Function(int id)? deleteWarehouse,
    TResult Function(
            int id, String name, String address, String phone, String email)?
        updateWarehouse,
    required TResult orElse(),
  }) {
    if (addWarehouse != null) {
      return addWarehouse(name, address, phone, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetWarehouses value) getWarehouses,
    required TResult Function(_AddWarehouse value) addWarehouse,
    required TResult Function(_DeleteWarehouse value) deleteWarehouse,
    required TResult Function(_UpdateWarehouse value) updateWarehouse,
  }) {
    return addWarehouse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetWarehouses value)? getWarehouses,
    TResult? Function(_AddWarehouse value)? addWarehouse,
    TResult? Function(_DeleteWarehouse value)? deleteWarehouse,
    TResult? Function(_UpdateWarehouse value)? updateWarehouse,
  }) {
    return addWarehouse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetWarehouses value)? getWarehouses,
    TResult Function(_AddWarehouse value)? addWarehouse,
    TResult Function(_DeleteWarehouse value)? deleteWarehouse,
    TResult Function(_UpdateWarehouse value)? updateWarehouse,
    required TResult orElse(),
  }) {
    if (addWarehouse != null) {
      return addWarehouse(this);
    }
    return orElse();
  }
}

abstract class _AddWarehouse implements WarehouseEvent {
  const factory _AddWarehouse(
      {required final String name,
      required final String address,
      required final String phone,
      required final String email}) = _$AddWarehouseImpl;

  String get name;
  String get address;
  String get phone;
  String get email;

  /// Create a copy of WarehouseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddWarehouseImplCopyWith<_$AddWarehouseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DeleteWarehouseImplCopyWith<$Res> {
  factory _$$DeleteWarehouseImplCopyWith(_$DeleteWarehouseImpl value,
          $Res Function(_$DeleteWarehouseImpl) then) =
      __$$DeleteWarehouseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteWarehouseImplCopyWithImpl<$Res>
    extends _$WarehouseEventCopyWithImpl<$Res, _$DeleteWarehouseImpl>
    implements _$$DeleteWarehouseImplCopyWith<$Res> {
  __$$DeleteWarehouseImplCopyWithImpl(
      _$DeleteWarehouseImpl _value, $Res Function(_$DeleteWarehouseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteWarehouseImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteWarehouseImpl implements _DeleteWarehouse {
  const _$DeleteWarehouseImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'WarehouseEvent.deleteWarehouse(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteWarehouseImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of WarehouseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteWarehouseImplCopyWith<_$DeleteWarehouseImpl> get copyWith =>
      __$$DeleteWarehouseImplCopyWithImpl<_$DeleteWarehouseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getWarehouses,
    required TResult Function(
            String name, String address, String phone, String email)
        addWarehouse,
    required TResult Function(int id) deleteWarehouse,
    required TResult Function(
            int id, String name, String address, String phone, String email)
        updateWarehouse,
  }) {
    return deleteWarehouse(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getWarehouses,
    TResult? Function(String name, String address, String phone, String email)?
        addWarehouse,
    TResult? Function(int id)? deleteWarehouse,
    TResult? Function(
            int id, String name, String address, String phone, String email)?
        updateWarehouse,
  }) {
    return deleteWarehouse?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getWarehouses,
    TResult Function(String name, String address, String phone, String email)?
        addWarehouse,
    TResult Function(int id)? deleteWarehouse,
    TResult Function(
            int id, String name, String address, String phone, String email)?
        updateWarehouse,
    required TResult orElse(),
  }) {
    if (deleteWarehouse != null) {
      return deleteWarehouse(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetWarehouses value) getWarehouses,
    required TResult Function(_AddWarehouse value) addWarehouse,
    required TResult Function(_DeleteWarehouse value) deleteWarehouse,
    required TResult Function(_UpdateWarehouse value) updateWarehouse,
  }) {
    return deleteWarehouse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetWarehouses value)? getWarehouses,
    TResult? Function(_AddWarehouse value)? addWarehouse,
    TResult? Function(_DeleteWarehouse value)? deleteWarehouse,
    TResult? Function(_UpdateWarehouse value)? updateWarehouse,
  }) {
    return deleteWarehouse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetWarehouses value)? getWarehouses,
    TResult Function(_AddWarehouse value)? addWarehouse,
    TResult Function(_DeleteWarehouse value)? deleteWarehouse,
    TResult Function(_UpdateWarehouse value)? updateWarehouse,
    required TResult orElse(),
  }) {
    if (deleteWarehouse != null) {
      return deleteWarehouse(this);
    }
    return orElse();
  }
}

abstract class _DeleteWarehouse implements WarehouseEvent {
  const factory _DeleteWarehouse(final int id) = _$DeleteWarehouseImpl;

  int get id;

  /// Create a copy of WarehouseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteWarehouseImplCopyWith<_$DeleteWarehouseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateWarehouseImplCopyWith<$Res> {
  factory _$$UpdateWarehouseImplCopyWith(_$UpdateWarehouseImpl value,
          $Res Function(_$UpdateWarehouseImpl) then) =
      __$$UpdateWarehouseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String name, String address, String phone, String email});
}

/// @nodoc
class __$$UpdateWarehouseImplCopyWithImpl<$Res>
    extends _$WarehouseEventCopyWithImpl<$Res, _$UpdateWarehouseImpl>
    implements _$$UpdateWarehouseImplCopyWith<$Res> {
  __$$UpdateWarehouseImplCopyWithImpl(
      _$UpdateWarehouseImpl _value, $Res Function(_$UpdateWarehouseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? address = null,
    Object? phone = null,
    Object? email = null,
  }) {
    return _then(_$UpdateWarehouseImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateWarehouseImpl implements _UpdateWarehouse {
  const _$UpdateWarehouseImpl(
      {required this.id,
      required this.name,
      required this.address,
      required this.phone,
      required this.email});

  @override
  final int id;
  @override
  final String name;
  @override
  final String address;
  @override
  final String phone;
  @override
  final String email;

  @override
  String toString() {
    return 'WarehouseEvent.updateWarehouse(id: $id, name: $name, address: $address, phone: $phone, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateWarehouseImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, address, phone, email);

  /// Create a copy of WarehouseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateWarehouseImplCopyWith<_$UpdateWarehouseImpl> get copyWith =>
      __$$UpdateWarehouseImplCopyWithImpl<_$UpdateWarehouseImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getWarehouses,
    required TResult Function(
            String name, String address, String phone, String email)
        addWarehouse,
    required TResult Function(int id) deleteWarehouse,
    required TResult Function(
            int id, String name, String address, String phone, String email)
        updateWarehouse,
  }) {
    return updateWarehouse(id, name, address, phone, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getWarehouses,
    TResult? Function(String name, String address, String phone, String email)?
        addWarehouse,
    TResult? Function(int id)? deleteWarehouse,
    TResult? Function(
            int id, String name, String address, String phone, String email)?
        updateWarehouse,
  }) {
    return updateWarehouse?.call(id, name, address, phone, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getWarehouses,
    TResult Function(String name, String address, String phone, String email)?
        addWarehouse,
    TResult Function(int id)? deleteWarehouse,
    TResult Function(
            int id, String name, String address, String phone, String email)?
        updateWarehouse,
    required TResult orElse(),
  }) {
    if (updateWarehouse != null) {
      return updateWarehouse(id, name, address, phone, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetWarehouses value) getWarehouses,
    required TResult Function(_AddWarehouse value) addWarehouse,
    required TResult Function(_DeleteWarehouse value) deleteWarehouse,
    required TResult Function(_UpdateWarehouse value) updateWarehouse,
  }) {
    return updateWarehouse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetWarehouses value)? getWarehouses,
    TResult? Function(_AddWarehouse value)? addWarehouse,
    TResult? Function(_DeleteWarehouse value)? deleteWarehouse,
    TResult? Function(_UpdateWarehouse value)? updateWarehouse,
  }) {
    return updateWarehouse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetWarehouses value)? getWarehouses,
    TResult Function(_AddWarehouse value)? addWarehouse,
    TResult Function(_DeleteWarehouse value)? deleteWarehouse,
    TResult Function(_UpdateWarehouse value)? updateWarehouse,
    required TResult orElse(),
  }) {
    if (updateWarehouse != null) {
      return updateWarehouse(this);
    }
    return orElse();
  }
}

abstract class _UpdateWarehouse implements WarehouseEvent {
  const factory _UpdateWarehouse(
      {required final int id,
      required final String name,
      required final String address,
      required final String phone,
      required final String email}) = _$UpdateWarehouseImpl;

  int get id;
  String get name;
  String get address;
  String get phone;
  String get email;

  /// Create a copy of WarehouseEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateWarehouseImplCopyWith<_$UpdateWarehouseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$WarehouseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Warehouse> data) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Warehouse> data)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Warehouse> data)? loaded,
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
abstract class $WarehouseStateCopyWith<$Res> {
  factory $WarehouseStateCopyWith(
          WarehouseState value, $Res Function(WarehouseState) then) =
      _$WarehouseStateCopyWithImpl<$Res, WarehouseState>;
}

/// @nodoc
class _$WarehouseStateCopyWithImpl<$Res, $Val extends WarehouseState>
    implements $WarehouseStateCopyWith<$Res> {
  _$WarehouseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WarehouseState
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
    extends _$WarehouseStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'WarehouseState.initial()';
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
    required TResult Function(List<Warehouse> data) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Warehouse> data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Warehouse> data)? loaded,
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

abstract class _Initial implements WarehouseState {
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
    extends _$WarehouseStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'WarehouseState.loading()';
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
    required TResult Function(List<Warehouse> data) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Warehouse> data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Warehouse> data)? loaded,
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

abstract class _Loading implements WarehouseState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Warehouse> data});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$WarehouseStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LoadedImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Warehouse>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Warehouse> data) : _data = data;

  final List<Warehouse> _data;
  @override
  List<Warehouse> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'WarehouseState.loaded(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  /// Create a copy of WarehouseState
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
    required TResult Function(List<Warehouse> data) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Warehouse> data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Warehouse> data)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
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

abstract class _Loaded implements WarehouseState {
  const factory _Loaded(final List<Warehouse> data) = _$LoadedImpl;

  List<Warehouse> get data;

  /// Create a copy of WarehouseState
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
    extends _$WarehouseStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of WarehouseState
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
    return 'WarehouseState.error(message: $message)';
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

  /// Create a copy of WarehouseState
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
    required TResult Function(List<Warehouse> data) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Warehouse> data)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Warehouse> data)? loaded,
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

abstract class _Error implements WarehouseState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of WarehouseState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
