// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'supplier_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SupplierEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String name, String phone, String address, String email)
        addSupplier,
    required TResult Function() getSuppliers,
    required TResult Function(int id) deleteSupplier,
    required TResult Function(
            int id, String name, String phone, String address, String email)
        updateSupplier,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String phone, String address, String email)?
        addSupplier,
    TResult? Function()? getSuppliers,
    TResult? Function(int id)? deleteSupplier,
    TResult? Function(
            int id, String name, String phone, String address, String email)?
        updateSupplier,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String phone, String address, String email)?
        addSupplier,
    TResult Function()? getSuppliers,
    TResult Function(int id)? deleteSupplier,
    TResult Function(
            int id, String name, String phone, String address, String email)?
        updateSupplier,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddSupplier value) addSupplier,
    required TResult Function(_GetSuppliers value) getSuppliers,
    required TResult Function(_DeleteSupplier value) deleteSupplier,
    required TResult Function(_UpdateSupplier value) updateSupplier,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddSupplier value)? addSupplier,
    TResult? Function(_GetSuppliers value)? getSuppliers,
    TResult? Function(_DeleteSupplier value)? deleteSupplier,
    TResult? Function(_UpdateSupplier value)? updateSupplier,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddSupplier value)? addSupplier,
    TResult Function(_GetSuppliers value)? getSuppliers,
    TResult Function(_DeleteSupplier value)? deleteSupplier,
    TResult Function(_UpdateSupplier value)? updateSupplier,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SupplierEventCopyWith<$Res> {
  factory $SupplierEventCopyWith(
          SupplierEvent value, $Res Function(SupplierEvent) then) =
      _$SupplierEventCopyWithImpl<$Res, SupplierEvent>;
}

/// @nodoc
class _$SupplierEventCopyWithImpl<$Res, $Val extends SupplierEvent>
    implements $SupplierEventCopyWith<$Res> {
  _$SupplierEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupplierEvent
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
    extends _$SupplierEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupplierEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'SupplierEvent.started()';
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
    required TResult Function(
            String name, String phone, String address, String email)
        addSupplier,
    required TResult Function() getSuppliers,
    required TResult Function(int id) deleteSupplier,
    required TResult Function(
            int id, String name, String phone, String address, String email)
        updateSupplier,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String phone, String address, String email)?
        addSupplier,
    TResult? Function()? getSuppliers,
    TResult? Function(int id)? deleteSupplier,
    TResult? Function(
            int id, String name, String phone, String address, String email)?
        updateSupplier,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String phone, String address, String email)?
        addSupplier,
    TResult Function()? getSuppliers,
    TResult Function(int id)? deleteSupplier,
    TResult Function(
            int id, String name, String phone, String address, String email)?
        updateSupplier,
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
    required TResult Function(_AddSupplier value) addSupplier,
    required TResult Function(_GetSuppliers value) getSuppliers,
    required TResult Function(_DeleteSupplier value) deleteSupplier,
    required TResult Function(_UpdateSupplier value) updateSupplier,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddSupplier value)? addSupplier,
    TResult? Function(_GetSuppliers value)? getSuppliers,
    TResult? Function(_DeleteSupplier value)? deleteSupplier,
    TResult? Function(_UpdateSupplier value)? updateSupplier,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddSupplier value)? addSupplier,
    TResult Function(_GetSuppliers value)? getSuppliers,
    TResult Function(_DeleteSupplier value)? deleteSupplier,
    TResult Function(_UpdateSupplier value)? updateSupplier,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SupplierEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddSupplierImplCopyWith<$Res> {
  factory _$$AddSupplierImplCopyWith(
          _$AddSupplierImpl value, $Res Function(_$AddSupplierImpl) then) =
      __$$AddSupplierImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String phone, String address, String email});
}

/// @nodoc
class __$$AddSupplierImplCopyWithImpl<$Res>
    extends _$SupplierEventCopyWithImpl<$Res, _$AddSupplierImpl>
    implements _$$AddSupplierImplCopyWith<$Res> {
  __$$AddSupplierImplCopyWithImpl(
      _$AddSupplierImpl _value, $Res Function(_$AddSupplierImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupplierEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
    Object? address = null,
    Object? email = null,
  }) {
    return _then(_$AddSupplierImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddSupplierImpl implements _AddSupplier {
  const _$AddSupplierImpl(
      {required this.name,
      required this.phone,
      required this.address,
      required this.email});

  @override
  final String name;
  @override
  final String phone;
  @override
  final String address;
  @override
  final String email;

  @override
  String toString() {
    return 'SupplierEvent.addSupplier(name: $name, phone: $phone, address: $address, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddSupplierImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, phone, address, email);

  /// Create a copy of SupplierEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddSupplierImplCopyWith<_$AddSupplierImpl> get copyWith =>
      __$$AddSupplierImplCopyWithImpl<_$AddSupplierImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String name, String phone, String address, String email)
        addSupplier,
    required TResult Function() getSuppliers,
    required TResult Function(int id) deleteSupplier,
    required TResult Function(
            int id, String name, String phone, String address, String email)
        updateSupplier,
  }) {
    return addSupplier(name, phone, address, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String phone, String address, String email)?
        addSupplier,
    TResult? Function()? getSuppliers,
    TResult? Function(int id)? deleteSupplier,
    TResult? Function(
            int id, String name, String phone, String address, String email)?
        updateSupplier,
  }) {
    return addSupplier?.call(name, phone, address, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String phone, String address, String email)?
        addSupplier,
    TResult Function()? getSuppliers,
    TResult Function(int id)? deleteSupplier,
    TResult Function(
            int id, String name, String phone, String address, String email)?
        updateSupplier,
    required TResult orElse(),
  }) {
    if (addSupplier != null) {
      return addSupplier(name, phone, address, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddSupplier value) addSupplier,
    required TResult Function(_GetSuppliers value) getSuppliers,
    required TResult Function(_DeleteSupplier value) deleteSupplier,
    required TResult Function(_UpdateSupplier value) updateSupplier,
  }) {
    return addSupplier(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddSupplier value)? addSupplier,
    TResult? Function(_GetSuppliers value)? getSuppliers,
    TResult? Function(_DeleteSupplier value)? deleteSupplier,
    TResult? Function(_UpdateSupplier value)? updateSupplier,
  }) {
    return addSupplier?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddSupplier value)? addSupplier,
    TResult Function(_GetSuppliers value)? getSuppliers,
    TResult Function(_DeleteSupplier value)? deleteSupplier,
    TResult Function(_UpdateSupplier value)? updateSupplier,
    required TResult orElse(),
  }) {
    if (addSupplier != null) {
      return addSupplier(this);
    }
    return orElse();
  }
}

abstract class _AddSupplier implements SupplierEvent {
  const factory _AddSupplier(
      {required final String name,
      required final String phone,
      required final String address,
      required final String email}) = _$AddSupplierImpl;

  String get name;
  String get phone;
  String get address;
  String get email;

  /// Create a copy of SupplierEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddSupplierImplCopyWith<_$AddSupplierImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetSuppliersImplCopyWith<$Res> {
  factory _$$GetSuppliersImplCopyWith(
          _$GetSuppliersImpl value, $Res Function(_$GetSuppliersImpl) then) =
      __$$GetSuppliersImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetSuppliersImplCopyWithImpl<$Res>
    extends _$SupplierEventCopyWithImpl<$Res, _$GetSuppliersImpl>
    implements _$$GetSuppliersImplCopyWith<$Res> {
  __$$GetSuppliersImplCopyWithImpl(
      _$GetSuppliersImpl _value, $Res Function(_$GetSuppliersImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupplierEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetSuppliersImpl implements _GetSuppliers {
  const _$GetSuppliersImpl();

  @override
  String toString() {
    return 'SupplierEvent.getSuppliers()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetSuppliersImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String name, String phone, String address, String email)
        addSupplier,
    required TResult Function() getSuppliers,
    required TResult Function(int id) deleteSupplier,
    required TResult Function(
            int id, String name, String phone, String address, String email)
        updateSupplier,
  }) {
    return getSuppliers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String phone, String address, String email)?
        addSupplier,
    TResult? Function()? getSuppliers,
    TResult? Function(int id)? deleteSupplier,
    TResult? Function(
            int id, String name, String phone, String address, String email)?
        updateSupplier,
  }) {
    return getSuppliers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String phone, String address, String email)?
        addSupplier,
    TResult Function()? getSuppliers,
    TResult Function(int id)? deleteSupplier,
    TResult Function(
            int id, String name, String phone, String address, String email)?
        updateSupplier,
    required TResult orElse(),
  }) {
    if (getSuppliers != null) {
      return getSuppliers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddSupplier value) addSupplier,
    required TResult Function(_GetSuppliers value) getSuppliers,
    required TResult Function(_DeleteSupplier value) deleteSupplier,
    required TResult Function(_UpdateSupplier value) updateSupplier,
  }) {
    return getSuppliers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddSupplier value)? addSupplier,
    TResult? Function(_GetSuppliers value)? getSuppliers,
    TResult? Function(_DeleteSupplier value)? deleteSupplier,
    TResult? Function(_UpdateSupplier value)? updateSupplier,
  }) {
    return getSuppliers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddSupplier value)? addSupplier,
    TResult Function(_GetSuppliers value)? getSuppliers,
    TResult Function(_DeleteSupplier value)? deleteSupplier,
    TResult Function(_UpdateSupplier value)? updateSupplier,
    required TResult orElse(),
  }) {
    if (getSuppliers != null) {
      return getSuppliers(this);
    }
    return orElse();
  }
}

abstract class _GetSuppliers implements SupplierEvent {
  const factory _GetSuppliers() = _$GetSuppliersImpl;
}

/// @nodoc
abstract class _$$DeleteSupplierImplCopyWith<$Res> {
  factory _$$DeleteSupplierImplCopyWith(_$DeleteSupplierImpl value,
          $Res Function(_$DeleteSupplierImpl) then) =
      __$$DeleteSupplierImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteSupplierImplCopyWithImpl<$Res>
    extends _$SupplierEventCopyWithImpl<$Res, _$DeleteSupplierImpl>
    implements _$$DeleteSupplierImplCopyWith<$Res> {
  __$$DeleteSupplierImplCopyWithImpl(
      _$DeleteSupplierImpl _value, $Res Function(_$DeleteSupplierImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupplierEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteSupplierImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteSupplierImpl implements _DeleteSupplier {
  const _$DeleteSupplierImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'SupplierEvent.deleteSupplier(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteSupplierImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of SupplierEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteSupplierImplCopyWith<_$DeleteSupplierImpl> get copyWith =>
      __$$DeleteSupplierImplCopyWithImpl<_$DeleteSupplierImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String name, String phone, String address, String email)
        addSupplier,
    required TResult Function() getSuppliers,
    required TResult Function(int id) deleteSupplier,
    required TResult Function(
            int id, String name, String phone, String address, String email)
        updateSupplier,
  }) {
    return deleteSupplier(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String phone, String address, String email)?
        addSupplier,
    TResult? Function()? getSuppliers,
    TResult? Function(int id)? deleteSupplier,
    TResult? Function(
            int id, String name, String phone, String address, String email)?
        updateSupplier,
  }) {
    return deleteSupplier?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String phone, String address, String email)?
        addSupplier,
    TResult Function()? getSuppliers,
    TResult Function(int id)? deleteSupplier,
    TResult Function(
            int id, String name, String phone, String address, String email)?
        updateSupplier,
    required TResult orElse(),
  }) {
    if (deleteSupplier != null) {
      return deleteSupplier(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddSupplier value) addSupplier,
    required TResult Function(_GetSuppliers value) getSuppliers,
    required TResult Function(_DeleteSupplier value) deleteSupplier,
    required TResult Function(_UpdateSupplier value) updateSupplier,
  }) {
    return deleteSupplier(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddSupplier value)? addSupplier,
    TResult? Function(_GetSuppliers value)? getSuppliers,
    TResult? Function(_DeleteSupplier value)? deleteSupplier,
    TResult? Function(_UpdateSupplier value)? updateSupplier,
  }) {
    return deleteSupplier?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddSupplier value)? addSupplier,
    TResult Function(_GetSuppliers value)? getSuppliers,
    TResult Function(_DeleteSupplier value)? deleteSupplier,
    TResult Function(_UpdateSupplier value)? updateSupplier,
    required TResult orElse(),
  }) {
    if (deleteSupplier != null) {
      return deleteSupplier(this);
    }
    return orElse();
  }
}

abstract class _DeleteSupplier implements SupplierEvent {
  const factory _DeleteSupplier(final int id) = _$DeleteSupplierImpl;

  int get id;

  /// Create a copy of SupplierEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteSupplierImplCopyWith<_$DeleteSupplierImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateSupplierImplCopyWith<$Res> {
  factory _$$UpdateSupplierImplCopyWith(_$UpdateSupplierImpl value,
          $Res Function(_$UpdateSupplierImpl) then) =
      __$$UpdateSupplierImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String name, String phone, String address, String email});
}

/// @nodoc
class __$$UpdateSupplierImplCopyWithImpl<$Res>
    extends _$SupplierEventCopyWithImpl<$Res, _$UpdateSupplierImpl>
    implements _$$UpdateSupplierImplCopyWith<$Res> {
  __$$UpdateSupplierImplCopyWithImpl(
      _$UpdateSupplierImpl _value, $Res Function(_$UpdateSupplierImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupplierEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? phone = null,
    Object? address = null,
    Object? email = null,
  }) {
    return _then(_$UpdateSupplierImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateSupplierImpl implements _UpdateSupplier {
  const _$UpdateSupplierImpl(
      {required this.id,
      required this.name,
      required this.phone,
      required this.address,
      required this.email});

  @override
  final int id;
  @override
  final String name;
  @override
  final String phone;
  @override
  final String address;
  @override
  final String email;

  @override
  String toString() {
    return 'SupplierEvent.updateSupplier(id: $id, name: $name, phone: $phone, address: $address, email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateSupplierImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, phone, address, email);

  /// Create a copy of SupplierEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateSupplierImplCopyWith<_$UpdateSupplierImpl> get copyWith =>
      __$$UpdateSupplierImplCopyWithImpl<_$UpdateSupplierImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(
            String name, String phone, String address, String email)
        addSupplier,
    required TResult Function() getSuppliers,
    required TResult Function(int id) deleteSupplier,
    required TResult Function(
            int id, String name, String phone, String address, String email)
        updateSupplier,
  }) {
    return updateSupplier(id, name, phone, address, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, String phone, String address, String email)?
        addSupplier,
    TResult? Function()? getSuppliers,
    TResult? Function(int id)? deleteSupplier,
    TResult? Function(
            int id, String name, String phone, String address, String email)?
        updateSupplier,
  }) {
    return updateSupplier?.call(id, name, phone, address, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, String phone, String address, String email)?
        addSupplier,
    TResult Function()? getSuppliers,
    TResult Function(int id)? deleteSupplier,
    TResult Function(
            int id, String name, String phone, String address, String email)?
        updateSupplier,
    required TResult orElse(),
  }) {
    if (updateSupplier != null) {
      return updateSupplier(id, name, phone, address, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddSupplier value) addSupplier,
    required TResult Function(_GetSuppliers value) getSuppliers,
    required TResult Function(_DeleteSupplier value) deleteSupplier,
    required TResult Function(_UpdateSupplier value) updateSupplier,
  }) {
    return updateSupplier(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddSupplier value)? addSupplier,
    TResult? Function(_GetSuppliers value)? getSuppliers,
    TResult? Function(_DeleteSupplier value)? deleteSupplier,
    TResult? Function(_UpdateSupplier value)? updateSupplier,
  }) {
    return updateSupplier?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddSupplier value)? addSupplier,
    TResult Function(_GetSuppliers value)? getSuppliers,
    TResult Function(_DeleteSupplier value)? deleteSupplier,
    TResult Function(_UpdateSupplier value)? updateSupplier,
    required TResult orElse(),
  }) {
    if (updateSupplier != null) {
      return updateSupplier(this);
    }
    return orElse();
  }
}

abstract class _UpdateSupplier implements SupplierEvent {
  const factory _UpdateSupplier(
      {required final int id,
      required final String name,
      required final String phone,
      required final String address,
      required final String email}) = _$UpdateSupplierImpl;

  int get id;
  String get name;
  String get phone;
  String get address;
  String get email;

  /// Create a copy of SupplierEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateSupplierImplCopyWith<_$UpdateSupplierImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SupplierState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Supplier> suppliers) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Supplier> suppliers)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Supplier> suppliers)? loaded,
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
abstract class $SupplierStateCopyWith<$Res> {
  factory $SupplierStateCopyWith(
          SupplierState value, $Res Function(SupplierState) then) =
      _$SupplierStateCopyWithImpl<$Res, SupplierState>;
}

/// @nodoc
class _$SupplierStateCopyWithImpl<$Res, $Val extends SupplierState>
    implements $SupplierStateCopyWith<$Res> {
  _$SupplierStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SupplierState
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
    extends _$SupplierStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupplierState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'SupplierState.initial()';
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
    required TResult Function(List<Supplier> suppliers) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Supplier> suppliers)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Supplier> suppliers)? loaded,
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

abstract class _Initial implements SupplierState {
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
    extends _$SupplierStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupplierState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'SupplierState.loading()';
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
    required TResult Function(List<Supplier> suppliers) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Supplier> suppliers)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Supplier> suppliers)? loaded,
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

abstract class _Loading implements SupplierState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Supplier> suppliers});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$SupplierStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupplierState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? suppliers = null,
  }) {
    return _then(_$LoadedImpl(
      null == suppliers
          ? _value._suppliers
          : suppliers // ignore: cast_nullable_to_non_nullable
              as List<Supplier>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Supplier> suppliers) : _suppliers = suppliers;

  final List<Supplier> _suppliers;
  @override
  List<Supplier> get suppliers {
    if (_suppliers is EqualUnmodifiableListView) return _suppliers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_suppliers);
  }

  @override
  String toString() {
    return 'SupplierState.loaded(suppliers: $suppliers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality()
                .equals(other._suppliers, _suppliers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_suppliers));

  /// Create a copy of SupplierState
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
    required TResult Function(List<Supplier> suppliers) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(suppliers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Supplier> suppliers)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(suppliers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Supplier> suppliers)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(suppliers);
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

abstract class _Loaded implements SupplierState {
  const factory _Loaded(final List<Supplier> suppliers) = _$LoadedImpl;

  List<Supplier> get suppliers;

  /// Create a copy of SupplierState
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
    extends _$SupplierStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of SupplierState
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
    return 'SupplierState.error(message: $message)';
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

  /// Create a copy of SupplierState
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
    required TResult Function(List<Supplier> suppliers) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Supplier> suppliers)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Supplier> suppliers)? loaded,
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

abstract class _Error implements SupplierState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of SupplierState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
