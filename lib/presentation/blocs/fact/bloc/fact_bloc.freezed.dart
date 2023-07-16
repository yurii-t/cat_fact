// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fact_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FactEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRandomCatFact,
    required TResult Function() getSavedCatFacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRandomCatFact,
    TResult? Function()? getSavedCatFacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRandomCatFact,
    TResult Function()? getSavedCatFacts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRandomCatFact value) getRandomCatFact,
    required TResult Function(_GetSavedCatFacts value) getSavedCatFacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRandomCatFact value)? getRandomCatFact,
    TResult? Function(_GetSavedCatFacts value)? getSavedCatFacts,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRandomCatFact value)? getRandomCatFact,
    TResult Function(_GetSavedCatFacts value)? getSavedCatFacts,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactEventCopyWith<$Res> {
  factory $FactEventCopyWith(FactEvent value, $Res Function(FactEvent) then) =
      _$FactEventCopyWithImpl<$Res, FactEvent>;
}

/// @nodoc
class _$FactEventCopyWithImpl<$Res, $Val extends FactEvent>
    implements $FactEventCopyWith<$Res> {
  _$FactEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetRandomCatFactCopyWith<$Res> {
  factory _$$_GetRandomCatFactCopyWith(
          _$_GetRandomCatFact value, $Res Function(_$_GetRandomCatFact) then) =
      __$$_GetRandomCatFactCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetRandomCatFactCopyWithImpl<$Res>
    extends _$FactEventCopyWithImpl<$Res, _$_GetRandomCatFact>
    implements _$$_GetRandomCatFactCopyWith<$Res> {
  __$$_GetRandomCatFactCopyWithImpl(
      _$_GetRandomCatFact _value, $Res Function(_$_GetRandomCatFact) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetRandomCatFact implements _GetRandomCatFact {
  const _$_GetRandomCatFact();

  @override
  String toString() {
    return 'FactEvent.getRandomCatFact()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetRandomCatFact);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRandomCatFact,
    required TResult Function() getSavedCatFacts,
  }) {
    return getRandomCatFact();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRandomCatFact,
    TResult? Function()? getSavedCatFacts,
  }) {
    return getRandomCatFact?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRandomCatFact,
    TResult Function()? getSavedCatFacts,
    required TResult orElse(),
  }) {
    if (getRandomCatFact != null) {
      return getRandomCatFact();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRandomCatFact value) getRandomCatFact,
    required TResult Function(_GetSavedCatFacts value) getSavedCatFacts,
  }) {
    return getRandomCatFact(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRandomCatFact value)? getRandomCatFact,
    TResult? Function(_GetSavedCatFacts value)? getSavedCatFacts,
  }) {
    return getRandomCatFact?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRandomCatFact value)? getRandomCatFact,
    TResult Function(_GetSavedCatFacts value)? getSavedCatFacts,
    required TResult orElse(),
  }) {
    if (getRandomCatFact != null) {
      return getRandomCatFact(this);
    }
    return orElse();
  }
}

abstract class _GetRandomCatFact implements FactEvent {
  const factory _GetRandomCatFact() = _$_GetRandomCatFact;
}

/// @nodoc
abstract class _$$_GetSavedCatFactsCopyWith<$Res> {
  factory _$$_GetSavedCatFactsCopyWith(
          _$_GetSavedCatFacts value, $Res Function(_$_GetSavedCatFacts) then) =
      __$$_GetSavedCatFactsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetSavedCatFactsCopyWithImpl<$Res>
    extends _$FactEventCopyWithImpl<$Res, _$_GetSavedCatFacts>
    implements _$$_GetSavedCatFactsCopyWith<$Res> {
  __$$_GetSavedCatFactsCopyWithImpl(
      _$_GetSavedCatFacts _value, $Res Function(_$_GetSavedCatFacts) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetSavedCatFacts implements _GetSavedCatFacts {
  const _$_GetSavedCatFacts();

  @override
  String toString() {
    return 'FactEvent.getSavedCatFacts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetSavedCatFacts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getRandomCatFact,
    required TResult Function() getSavedCatFacts,
  }) {
    return getSavedCatFacts();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getRandomCatFact,
    TResult? Function()? getSavedCatFacts,
  }) {
    return getSavedCatFacts?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getRandomCatFact,
    TResult Function()? getSavedCatFacts,
    required TResult orElse(),
  }) {
    if (getSavedCatFacts != null) {
      return getSavedCatFacts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetRandomCatFact value) getRandomCatFact,
    required TResult Function(_GetSavedCatFacts value) getSavedCatFacts,
  }) {
    return getSavedCatFacts(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetRandomCatFact value)? getRandomCatFact,
    TResult? Function(_GetSavedCatFacts value)? getSavedCatFacts,
  }) {
    return getSavedCatFacts?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetRandomCatFact value)? getRandomCatFact,
    TResult Function(_GetSavedCatFacts value)? getSavedCatFacts,
    required TResult orElse(),
  }) {
    if (getSavedCatFacts != null) {
      return getSavedCatFacts(this);
    }
    return orElse();
  }
}

abstract class _GetSavedCatFacts implements FactEvent {
  const factory _GetSavedCatFacts() = _$_GetSavedCatFacts;
}

/// @nodoc
mixin _$FactState {
  BlocStatus get status => throw _privateConstructorUsedError;
  List<CatFact> get catFacts => throw _privateConstructorUsedError;
  CatFact? get catFact => throw _privateConstructorUsedError;
  List<int>? get catImage => throw _privateConstructorUsedError;
  Object? get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FactStateCopyWith<FactState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FactStateCopyWith<$Res> {
  factory $FactStateCopyWith(FactState value, $Res Function(FactState) then) =
      _$FactStateCopyWithImpl<$Res, FactState>;
  @useResult
  $Res call(
      {BlocStatus status,
      List<CatFact> catFacts,
      CatFact? catFact,
      List<int>? catImage,
      Object? error});

  $CatFactCopyWith<$Res>? get catFact;
}

/// @nodoc
class _$FactStateCopyWithImpl<$Res, $Val extends FactState>
    implements $FactStateCopyWith<$Res> {
  _$FactStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? catFacts = null,
    Object? catFact = freezed,
    Object? catImage = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      catFacts: null == catFacts
          ? _value.catFacts
          : catFacts // ignore: cast_nullable_to_non_nullable
              as List<CatFact>,
      catFact: freezed == catFact
          ? _value.catFact
          : catFact // ignore: cast_nullable_to_non_nullable
              as CatFact?,
      catImage: freezed == catImage
          ? _value.catImage
          : catImage // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      error: freezed == error ? _value.error : error,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CatFactCopyWith<$Res>? get catFact {
    if (_value.catFact == null) {
      return null;
    }

    return $CatFactCopyWith<$Res>(_value.catFact!, (value) {
      return _then(_value.copyWith(catFact: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_FactStateCopyWith<$Res> implements $FactStateCopyWith<$Res> {
  factory _$$_FactStateCopyWith(
          _$_FactState value, $Res Function(_$_FactState) then) =
      __$$_FactStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BlocStatus status,
      List<CatFact> catFacts,
      CatFact? catFact,
      List<int>? catImage,
      Object? error});

  @override
  $CatFactCopyWith<$Res>? get catFact;
}

/// @nodoc
class __$$_FactStateCopyWithImpl<$Res>
    extends _$FactStateCopyWithImpl<$Res, _$_FactState>
    implements _$$_FactStateCopyWith<$Res> {
  __$$_FactStateCopyWithImpl(
      _$_FactState _value, $Res Function(_$_FactState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? catFacts = null,
    Object? catFact = freezed,
    Object? catImage = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_FactState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BlocStatus,
      catFacts: null == catFacts
          ? _value._catFacts
          : catFacts // ignore: cast_nullable_to_non_nullable
              as List<CatFact>,
      catFact: freezed == catFact
          ? _value.catFact
          : catFact // ignore: cast_nullable_to_non_nullable
              as CatFact?,
      catImage: freezed == catImage
          ? _value._catImage
          : catImage // ignore: cast_nullable_to_non_nullable
              as List<int>?,
      error: freezed == error ? _value.error : error,
    ));
  }
}

/// @nodoc

class _$_FactState implements _FactState {
  const _$_FactState(
      {required this.status,
      required final List<CatFact> catFacts,
      this.catFact,
      final List<int>? catImage,
      this.error})
      : _catFacts = catFacts,
        _catImage = catImage;

  @override
  final BlocStatus status;
  final List<CatFact> _catFacts;
  @override
  List<CatFact> get catFacts {
    if (_catFacts is EqualUnmodifiableListView) return _catFacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_catFacts);
  }

  @override
  final CatFact? catFact;
  final List<int>? _catImage;
  @override
  List<int>? get catImage {
    final value = _catImage;
    if (value == null) return null;
    if (_catImage is EqualUnmodifiableListView) return _catImage;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Object? error;

  @override
  String toString() {
    return 'FactState(status: $status, catFacts: $catFacts, catFact: $catFact, catImage: $catImage, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FactState &&
            (identical(other.status, status) || other.status == status) &&
            const DeepCollectionEquality().equals(other._catFacts, _catFacts) &&
            (identical(other.catFact, catFact) || other.catFact == catFact) &&
            const DeepCollectionEquality().equals(other._catImage, _catImage) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      const DeepCollectionEquality().hash(_catFacts),
      catFact,
      const DeepCollectionEquality().hash(_catImage),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FactStateCopyWith<_$_FactState> get copyWith =>
      __$$_FactStateCopyWithImpl<_$_FactState>(this, _$identity);
}

abstract class _FactState implements FactState {
  const factory _FactState(
      {required final BlocStatus status,
      required final List<CatFact> catFacts,
      final CatFact? catFact,
      final List<int>? catImage,
      final Object? error}) = _$_FactState;

  @override
  BlocStatus get status;
  @override
  List<CatFact> get catFacts;
  @override
  CatFact? get catFact;
  @override
  List<int>? get catImage;
  @override
  Object? get error;
  @override
  @JsonKey(ignore: true)
  _$$_FactStateCopyWith<_$_FactState> get copyWith =>
      throw _privateConstructorUsedError;
}
