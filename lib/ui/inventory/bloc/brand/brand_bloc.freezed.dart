// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'brand_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$BrandEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, XFile image) addBrand,
    required TResult Function() getBrands,
    required TResult Function(int id) deleteBrand,
    required TResult Function(int id, String name, XFile? image) updateBrand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, XFile image)? addBrand,
    TResult? Function()? getBrands,
    TResult? Function(int id)? deleteBrand,
    TResult? Function(int id, String name, XFile? image)? updateBrand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, XFile image)? addBrand,
    TResult Function()? getBrands,
    TResult Function(int id)? deleteBrand,
    TResult Function(int id, String name, XFile? image)? updateBrand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddBrand value) addBrand,
    required TResult Function(_GetBrands value) getBrands,
    required TResult Function(_DeleteBrand value) deleteBrand,
    required TResult Function(_UpdateBrand value) updateBrand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddBrand value)? addBrand,
    TResult? Function(_GetBrands value)? getBrands,
    TResult? Function(_DeleteBrand value)? deleteBrand,
    TResult? Function(_UpdateBrand value)? updateBrand,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddBrand value)? addBrand,
    TResult Function(_GetBrands value)? getBrands,
    TResult Function(_DeleteBrand value)? deleteBrand,
    TResult Function(_UpdateBrand value)? updateBrand,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BrandEventCopyWith<$Res> {
  factory $BrandEventCopyWith(
          BrandEvent value, $Res Function(BrandEvent) then) =
      _$BrandEventCopyWithImpl<$Res, BrandEvent>;
}

/// @nodoc
class _$BrandEventCopyWithImpl<$Res, $Val extends BrandEvent>
    implements $BrandEventCopyWith<$Res> {
  _$BrandEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandEvent
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
    extends _$BrandEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'BrandEvent.started()';
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
    required TResult Function(String name, XFile image) addBrand,
    required TResult Function() getBrands,
    required TResult Function(int id) deleteBrand,
    required TResult Function(int id, String name, XFile? image) updateBrand,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, XFile image)? addBrand,
    TResult? Function()? getBrands,
    TResult? Function(int id)? deleteBrand,
    TResult? Function(int id, String name, XFile? image)? updateBrand,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, XFile image)? addBrand,
    TResult Function()? getBrands,
    TResult Function(int id)? deleteBrand,
    TResult Function(int id, String name, XFile? image)? updateBrand,
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
    required TResult Function(_AddBrand value) addBrand,
    required TResult Function(_GetBrands value) getBrands,
    required TResult Function(_DeleteBrand value) deleteBrand,
    required TResult Function(_UpdateBrand value) updateBrand,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddBrand value)? addBrand,
    TResult? Function(_GetBrands value)? getBrands,
    TResult? Function(_DeleteBrand value)? deleteBrand,
    TResult? Function(_UpdateBrand value)? updateBrand,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddBrand value)? addBrand,
    TResult Function(_GetBrands value)? getBrands,
    TResult Function(_DeleteBrand value)? deleteBrand,
    TResult Function(_UpdateBrand value)? updateBrand,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements BrandEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$AddBrandImplCopyWith<$Res> {
  factory _$$AddBrandImplCopyWith(
          _$AddBrandImpl value, $Res Function(_$AddBrandImpl) then) =
      __$$AddBrandImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, XFile image});
}

/// @nodoc
class __$$AddBrandImplCopyWithImpl<$Res>
    extends _$BrandEventCopyWithImpl<$Res, _$AddBrandImpl>
    implements _$$AddBrandImplCopyWith<$Res> {
  __$$AddBrandImplCopyWithImpl(
      _$AddBrandImpl _value, $Res Function(_$AddBrandImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? image = null,
  }) {
    return _then(_$AddBrandImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$AddBrandImpl implements _AddBrand {
  const _$AddBrandImpl({required this.name, required this.image});

  @override
  final String name;
  @override
  final XFile image;

  @override
  String toString() {
    return 'BrandEvent.addBrand(name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddBrandImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, image);

  /// Create a copy of BrandEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AddBrandImplCopyWith<_$AddBrandImpl> get copyWith =>
      __$$AddBrandImplCopyWithImpl<_$AddBrandImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, XFile image) addBrand,
    required TResult Function() getBrands,
    required TResult Function(int id) deleteBrand,
    required TResult Function(int id, String name, XFile? image) updateBrand,
  }) {
    return addBrand(name, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, XFile image)? addBrand,
    TResult? Function()? getBrands,
    TResult? Function(int id)? deleteBrand,
    TResult? Function(int id, String name, XFile? image)? updateBrand,
  }) {
    return addBrand?.call(name, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, XFile image)? addBrand,
    TResult Function()? getBrands,
    TResult Function(int id)? deleteBrand,
    TResult Function(int id, String name, XFile? image)? updateBrand,
    required TResult orElse(),
  }) {
    if (addBrand != null) {
      return addBrand(name, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddBrand value) addBrand,
    required TResult Function(_GetBrands value) getBrands,
    required TResult Function(_DeleteBrand value) deleteBrand,
    required TResult Function(_UpdateBrand value) updateBrand,
  }) {
    return addBrand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddBrand value)? addBrand,
    TResult? Function(_GetBrands value)? getBrands,
    TResult? Function(_DeleteBrand value)? deleteBrand,
    TResult? Function(_UpdateBrand value)? updateBrand,
  }) {
    return addBrand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddBrand value)? addBrand,
    TResult Function(_GetBrands value)? getBrands,
    TResult Function(_DeleteBrand value)? deleteBrand,
    TResult Function(_UpdateBrand value)? updateBrand,
    required TResult orElse(),
  }) {
    if (addBrand != null) {
      return addBrand(this);
    }
    return orElse();
  }
}

abstract class _AddBrand implements BrandEvent {
  const factory _AddBrand(
      {required final String name,
      required final XFile image}) = _$AddBrandImpl;

  String get name;
  XFile get image;

  /// Create a copy of BrandEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AddBrandImplCopyWith<_$AddBrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBrandsImplCopyWith<$Res> {
  factory _$$GetBrandsImplCopyWith(
          _$GetBrandsImpl value, $Res Function(_$GetBrandsImpl) then) =
      __$$GetBrandsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBrandsImplCopyWithImpl<$Res>
    extends _$BrandEventCopyWithImpl<$Res, _$GetBrandsImpl>
    implements _$$GetBrandsImplCopyWith<$Res> {
  __$$GetBrandsImplCopyWithImpl(
      _$GetBrandsImpl _value, $Res Function(_$GetBrandsImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetBrandsImpl implements _GetBrands {
  const _$GetBrandsImpl();

  @override
  String toString() {
    return 'BrandEvent.getBrands()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBrandsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, XFile image) addBrand,
    required TResult Function() getBrands,
    required TResult Function(int id) deleteBrand,
    required TResult Function(int id, String name, XFile? image) updateBrand,
  }) {
    return getBrands();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, XFile image)? addBrand,
    TResult? Function()? getBrands,
    TResult? Function(int id)? deleteBrand,
    TResult? Function(int id, String name, XFile? image)? updateBrand,
  }) {
    return getBrands?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, XFile image)? addBrand,
    TResult Function()? getBrands,
    TResult Function(int id)? deleteBrand,
    TResult Function(int id, String name, XFile? image)? updateBrand,
    required TResult orElse(),
  }) {
    if (getBrands != null) {
      return getBrands();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddBrand value) addBrand,
    required TResult Function(_GetBrands value) getBrands,
    required TResult Function(_DeleteBrand value) deleteBrand,
    required TResult Function(_UpdateBrand value) updateBrand,
  }) {
    return getBrands(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddBrand value)? addBrand,
    TResult? Function(_GetBrands value)? getBrands,
    TResult? Function(_DeleteBrand value)? deleteBrand,
    TResult? Function(_UpdateBrand value)? updateBrand,
  }) {
    return getBrands?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddBrand value)? addBrand,
    TResult Function(_GetBrands value)? getBrands,
    TResult Function(_DeleteBrand value)? deleteBrand,
    TResult Function(_UpdateBrand value)? updateBrand,
    required TResult orElse(),
  }) {
    if (getBrands != null) {
      return getBrands(this);
    }
    return orElse();
  }
}

abstract class _GetBrands implements BrandEvent {
  const factory _GetBrands() = _$GetBrandsImpl;
}

/// @nodoc
abstract class _$$DeleteBrandImplCopyWith<$Res> {
  factory _$$DeleteBrandImplCopyWith(
          _$DeleteBrandImpl value, $Res Function(_$DeleteBrandImpl) then) =
      __$$DeleteBrandImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id});
}

/// @nodoc
class __$$DeleteBrandImplCopyWithImpl<$Res>
    extends _$BrandEventCopyWithImpl<$Res, _$DeleteBrandImpl>
    implements _$$DeleteBrandImplCopyWith<$Res> {
  __$$DeleteBrandImplCopyWithImpl(
      _$DeleteBrandImpl _value, $Res Function(_$DeleteBrandImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
  }) {
    return _then(_$DeleteBrandImpl(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$DeleteBrandImpl implements _DeleteBrand {
  const _$DeleteBrandImpl(this.id);

  @override
  final int id;

  @override
  String toString() {
    return 'BrandEvent.deleteBrand(id: $id)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteBrandImpl &&
            (identical(other.id, id) || other.id == id));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id);

  /// Create a copy of BrandEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteBrandImplCopyWith<_$DeleteBrandImpl> get copyWith =>
      __$$DeleteBrandImplCopyWithImpl<_$DeleteBrandImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, XFile image) addBrand,
    required TResult Function() getBrands,
    required TResult Function(int id) deleteBrand,
    required TResult Function(int id, String name, XFile? image) updateBrand,
  }) {
    return deleteBrand(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, XFile image)? addBrand,
    TResult? Function()? getBrands,
    TResult? Function(int id)? deleteBrand,
    TResult? Function(int id, String name, XFile? image)? updateBrand,
  }) {
    return deleteBrand?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, XFile image)? addBrand,
    TResult Function()? getBrands,
    TResult Function(int id)? deleteBrand,
    TResult Function(int id, String name, XFile? image)? updateBrand,
    required TResult orElse(),
  }) {
    if (deleteBrand != null) {
      return deleteBrand(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddBrand value) addBrand,
    required TResult Function(_GetBrands value) getBrands,
    required TResult Function(_DeleteBrand value) deleteBrand,
    required TResult Function(_UpdateBrand value) updateBrand,
  }) {
    return deleteBrand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddBrand value)? addBrand,
    TResult? Function(_GetBrands value)? getBrands,
    TResult? Function(_DeleteBrand value)? deleteBrand,
    TResult? Function(_UpdateBrand value)? updateBrand,
  }) {
    return deleteBrand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddBrand value)? addBrand,
    TResult Function(_GetBrands value)? getBrands,
    TResult Function(_DeleteBrand value)? deleteBrand,
    TResult Function(_UpdateBrand value)? updateBrand,
    required TResult orElse(),
  }) {
    if (deleteBrand != null) {
      return deleteBrand(this);
    }
    return orElse();
  }
}

abstract class _DeleteBrand implements BrandEvent {
  const factory _DeleteBrand(final int id) = _$DeleteBrandImpl;

  int get id;

  /// Create a copy of BrandEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteBrandImplCopyWith<_$DeleteBrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateBrandImplCopyWith<$Res> {
  factory _$$UpdateBrandImplCopyWith(
          _$UpdateBrandImpl value, $Res Function(_$UpdateBrandImpl) then) =
      __$$UpdateBrandImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String name, XFile? image});
}

/// @nodoc
class __$$UpdateBrandImplCopyWithImpl<$Res>
    extends _$BrandEventCopyWithImpl<$Res, _$UpdateBrandImpl>
    implements _$$UpdateBrandImplCopyWith<$Res> {
  __$$UpdateBrandImplCopyWithImpl(
      _$UpdateBrandImpl _value, $Res Function(_$UpdateBrandImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = freezed,
  }) {
    return _then(_$UpdateBrandImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$UpdateBrandImpl implements _UpdateBrand {
  const _$UpdateBrandImpl(
      {required this.id, required this.name, required this.image});

  @override
  final int id;
  @override
  final String name;
  @override
  final XFile? image;

  @override
  String toString() {
    return 'BrandEvent.updateBrand(id: $id, name: $name, image: $image)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateBrandImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name, image);

  /// Create a copy of BrandEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateBrandImplCopyWith<_$UpdateBrandImpl> get copyWith =>
      __$$UpdateBrandImplCopyWithImpl<_$UpdateBrandImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String name, XFile image) addBrand,
    required TResult Function() getBrands,
    required TResult Function(int id) deleteBrand,
    required TResult Function(int id, String name, XFile? image) updateBrand,
  }) {
    return updateBrand(id, name, image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String name, XFile image)? addBrand,
    TResult? Function()? getBrands,
    TResult? Function(int id)? deleteBrand,
    TResult? Function(int id, String name, XFile? image)? updateBrand,
  }) {
    return updateBrand?.call(id, name, image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String name, XFile image)? addBrand,
    TResult Function()? getBrands,
    TResult Function(int id)? deleteBrand,
    TResult Function(int id, String name, XFile? image)? updateBrand,
    required TResult orElse(),
  }) {
    if (updateBrand != null) {
      return updateBrand(id, name, image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddBrand value) addBrand,
    required TResult Function(_GetBrands value) getBrands,
    required TResult Function(_DeleteBrand value) deleteBrand,
    required TResult Function(_UpdateBrand value) updateBrand,
  }) {
    return updateBrand(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddBrand value)? addBrand,
    TResult? Function(_GetBrands value)? getBrands,
    TResult? Function(_DeleteBrand value)? deleteBrand,
    TResult? Function(_UpdateBrand value)? updateBrand,
  }) {
    return updateBrand?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddBrand value)? addBrand,
    TResult Function(_GetBrands value)? getBrands,
    TResult Function(_DeleteBrand value)? deleteBrand,
    TResult Function(_UpdateBrand value)? updateBrand,
    required TResult orElse(),
  }) {
    if (updateBrand != null) {
      return updateBrand(this);
    }
    return orElse();
  }
}

abstract class _UpdateBrand implements BrandEvent {
  const factory _UpdateBrand(
      {required final int id,
      required final String name,
      required final XFile? image}) = _$UpdateBrandImpl;

  int get id;
  String get name;
  XFile? get image;

  /// Create a copy of BrandEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UpdateBrandImplCopyWith<_$UpdateBrandImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BrandState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Brand> brands) loaded,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Brand> brands)? loaded,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Brand> brands)? loaded,
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
abstract class $BrandStateCopyWith<$Res> {
  factory $BrandStateCopyWith(
          BrandState value, $Res Function(BrandState) then) =
      _$BrandStateCopyWithImpl<$Res, BrandState>;
}

/// @nodoc
class _$BrandStateCopyWithImpl<$Res, $Val extends BrandState>
    implements $BrandStateCopyWith<$Res> {
  _$BrandStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BrandState
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
    extends _$BrandStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'BrandState.initial()';
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
    required TResult Function(List<Brand> brands) loaded,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Brand> brands)? loaded,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Brand> brands)? loaded,
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

abstract class _Initial implements BrandState {
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
    extends _$BrandStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'BrandState.loading()';
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
    required TResult Function(List<Brand> brands) loaded,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Brand> brands)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Brand> brands)? loaded,
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

abstract class _Loading implements BrandState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$LoadedImplCopyWith<$Res> {
  factory _$$LoadedImplCopyWith(
          _$LoadedImpl value, $Res Function(_$LoadedImpl) then) =
      __$$LoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Brand> brands});
}

/// @nodoc
class __$$LoadedImplCopyWithImpl<$Res>
    extends _$BrandStateCopyWithImpl<$Res, _$LoadedImpl>
    implements _$$LoadedImplCopyWith<$Res> {
  __$$LoadedImplCopyWithImpl(
      _$LoadedImpl _value, $Res Function(_$LoadedImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? brands = null,
  }) {
    return _then(_$LoadedImpl(
      null == brands
          ? _value._brands
          : brands // ignore: cast_nullable_to_non_nullable
              as List<Brand>,
    ));
  }
}

/// @nodoc

class _$LoadedImpl implements _Loaded {
  const _$LoadedImpl(final List<Brand> brands) : _brands = brands;

  final List<Brand> _brands;
  @override
  List<Brand> get brands {
    if (_brands is EqualUnmodifiableListView) return _brands;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_brands);
  }

  @override
  String toString() {
    return 'BrandState.loaded(brands: $brands)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadedImpl &&
            const DeepCollectionEquality().equals(other._brands, _brands));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_brands));

  /// Create a copy of BrandState
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
    required TResult Function(List<Brand> brands) loaded,
    required TResult Function(String message) error,
  }) {
    return loaded(brands);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Brand> brands)? loaded,
    TResult? Function(String message)? error,
  }) {
    return loaded?.call(brands);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Brand> brands)? loaded,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(brands);
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

abstract class _Loaded implements BrandState {
  const factory _Loaded(final List<Brand> brands) = _$LoadedImpl;

  List<Brand> get brands;

  /// Create a copy of BrandState
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
    extends _$BrandStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
      _$ErrorImpl _value, $Res Function(_$ErrorImpl) _then)
      : super(_value, _then);

  /// Create a copy of BrandState
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
    return 'BrandState.error(message: $message)';
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

  /// Create a copy of BrandState
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
    required TResult Function(List<Brand> brands) loaded,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<Brand> brands)? loaded,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Brand> brands)? loaded,
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

abstract class _Error implements BrandState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of BrandState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
