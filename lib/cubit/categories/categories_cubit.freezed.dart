// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'categories_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CategoriesStateTearOff {
  const _$CategoriesStateTearOff();

  Loading loading() {
    return const Loading();
  }

  Successful successful(List<Category> categories) {
    return Successful(
      categories,
    );
  }

  Failed failed() {
    return const Failed();
  }
}

/// @nodoc
const $CategoriesState = _$CategoriesStateTearOff();

/// @nodoc
mixin _$CategoriesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Category> categories) successful,
    required TResult Function() failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category> categories)? successful,
    TResult Function()? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Successful value) successful,
    required TResult Function(Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Successful value)? successful,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoriesStateCopyWith<$Res> {
  factory $CategoriesStateCopyWith(
          CategoriesState value, $Res Function(CategoriesState) then) =
      _$CategoriesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CategoriesStateCopyWithImpl<$Res>
    implements $CategoriesStateCopyWith<$Res> {
  _$CategoriesStateCopyWithImpl(this._value, this._then);

  final CategoriesState _value;
  // ignore: unused_field
  final $Res Function(CategoriesState) _then;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$CategoriesStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading();

  @override
  String toString() {
    return 'CategoriesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Category> categories) successful,
    required TResult Function() failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category> categories)? successful,
    TResult Function()? failed,
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
    required TResult Function(Loading value) loading,
    required TResult Function(Successful value) successful,
    required TResult Function(Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Successful value)? successful,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements CategoriesState {
  const factory Loading() = _$Loading;
}

/// @nodoc
abstract class $SuccessfulCopyWith<$Res> {
  factory $SuccessfulCopyWith(
          Successful value, $Res Function(Successful) then) =
      _$SuccessfulCopyWithImpl<$Res>;
  $Res call({List<Category> categories});
}

/// @nodoc
class _$SuccessfulCopyWithImpl<$Res> extends _$CategoriesStateCopyWithImpl<$Res>
    implements $SuccessfulCopyWith<$Res> {
  _$SuccessfulCopyWithImpl(Successful _value, $Res Function(Successful) _then)
      : super(_value, (v) => _then(v as Successful));

  @override
  Successful get _value => super._value as Successful;

  @override
  $Res call({
    Object? categories = freezed,
  }) {
    return _then(Successful(
      categories == freezed
          ? _value.categories
          : categories // ignore: cast_nullable_to_non_nullable
              as List<Category>,
    ));
  }
}

/// @nodoc

class _$Successful implements Successful {
  const _$Successful(this.categories);

  @override
  final List<Category> categories;

  @override
  String toString() {
    return 'CategoriesState.successful(categories: $categories)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Successful &&
            (identical(other.categories, categories) ||
                const DeepCollectionEquality()
                    .equals(other.categories, categories)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(categories);

  @JsonKey(ignore: true)
  @override
  $SuccessfulCopyWith<Successful> get copyWith =>
      _$SuccessfulCopyWithImpl<Successful>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Category> categories) successful,
    required TResult Function() failed,
  }) {
    return successful(categories);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category> categories)? successful,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(categories);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Successful value) successful,
    required TResult Function(Failed value) failed,
  }) {
    return successful(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Successful value)? successful,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (successful != null) {
      return successful(this);
    }
    return orElse();
  }
}

abstract class Successful implements CategoriesState {
  const factory Successful(List<Category> categories) = _$Successful;

  List<Category> get categories => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SuccessfulCopyWith<Successful> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailedCopyWith<$Res> {
  factory $FailedCopyWith(Failed value, $Res Function(Failed) then) =
      _$FailedCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailedCopyWithImpl<$Res> extends _$CategoriesStateCopyWithImpl<$Res>
    implements $FailedCopyWith<$Res> {
  _$FailedCopyWithImpl(Failed _value, $Res Function(Failed) _then)
      : super(_value, (v) => _then(v as Failed));

  @override
  Failed get _value => super._value as Failed;
}

/// @nodoc

class _$Failed implements Failed {
  const _$Failed();

  @override
  String toString() {
    return 'CategoriesState.failed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Failed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(List<Category> categories) successful,
    required TResult Function() failed,
  }) {
    return failed();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(List<Category> categories)? successful,
    TResult Function()? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Loading value) loading,
    required TResult Function(Successful value) successful,
    required TResult Function(Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Loading value)? loading,
    TResult Function(Successful value)? successful,
    TResult Function(Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class Failed implements CategoriesState {
  const factory Failed() = _$Failed;
}
