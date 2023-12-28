// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'books_mark_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BooksMarkEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeHeaderTitle,
    required TResult Function(BooksMarkDto booksMarkDto) addRemoveBooksMark,
    required TResult Function(String title) isBookMarked,
    required TResult Function(String title) getRemoveBooksMark,
    required TResult Function() getBooksMark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeHeaderTitle,
    TResult? Function(BooksMarkDto booksMarkDto)? addRemoveBooksMark,
    TResult? Function(String title)? isBookMarked,
    TResult? Function(String title)? getRemoveBooksMark,
    TResult? Function()? getBooksMark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeHeaderTitle,
    TResult Function(BooksMarkDto booksMarkDto)? addRemoveBooksMark,
    TResult Function(String title)? isBookMarked,
    TResult Function(String title)? getRemoveBooksMark,
    TResult Function()? getBooksMark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeHeaderTitle value) changeHeaderTitle,
    required TResult Function(_AddRemoveBooksMark value) addRemoveBooksMark,
    required TResult Function(_IsBookMarked value) isBookMarked,
    required TResult Function(_GetRemoveBooksMark value) getRemoveBooksMark,
    required TResult Function(_GetBooksMark value) getBooksMark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeHeaderTitle value)? changeHeaderTitle,
    TResult? Function(_AddRemoveBooksMark value)? addRemoveBooksMark,
    TResult? Function(_IsBookMarked value)? isBookMarked,
    TResult? Function(_GetRemoveBooksMark value)? getRemoveBooksMark,
    TResult? Function(_GetBooksMark value)? getBooksMark,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeHeaderTitle value)? changeHeaderTitle,
    TResult Function(_AddRemoveBooksMark value)? addRemoveBooksMark,
    TResult Function(_IsBookMarked value)? isBookMarked,
    TResult Function(_GetRemoveBooksMark value)? getRemoveBooksMark,
    TResult Function(_GetBooksMark value)? getBooksMark,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksMarkEventCopyWith<$Res> {
  factory $BooksMarkEventCopyWith(
          BooksMarkEvent value, $Res Function(BooksMarkEvent) then) =
      _$BooksMarkEventCopyWithImpl<$Res, BooksMarkEvent>;
}

/// @nodoc
class _$BooksMarkEventCopyWithImpl<$Res, $Val extends BooksMarkEvent>
    implements $BooksMarkEventCopyWith<$Res> {
  _$BooksMarkEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ChangeHeaderTitleImplCopyWith<$Res> {
  factory _$$ChangeHeaderTitleImplCopyWith(_$ChangeHeaderTitleImpl value,
          $Res Function(_$ChangeHeaderTitleImpl) then) =
      __$$ChangeHeaderTitleImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$ChangeHeaderTitleImplCopyWithImpl<$Res>
    extends _$BooksMarkEventCopyWithImpl<$Res, _$ChangeHeaderTitleImpl>
    implements _$$ChangeHeaderTitleImplCopyWith<$Res> {
  __$$ChangeHeaderTitleImplCopyWithImpl(_$ChangeHeaderTitleImpl _value,
      $Res Function(_$ChangeHeaderTitleImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$ChangeHeaderTitleImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$ChangeHeaderTitleImpl implements _ChangeHeaderTitle {
  const _$ChangeHeaderTitleImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'BooksMarkEvent.changeHeaderTitle(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeHeaderTitleImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeHeaderTitleImplCopyWith<_$ChangeHeaderTitleImpl> get copyWith =>
      __$$ChangeHeaderTitleImplCopyWithImpl<_$ChangeHeaderTitleImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeHeaderTitle,
    required TResult Function(BooksMarkDto booksMarkDto) addRemoveBooksMark,
    required TResult Function(String title) isBookMarked,
    required TResult Function(String title) getRemoveBooksMark,
    required TResult Function() getBooksMark,
  }) {
    return changeHeaderTitle(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeHeaderTitle,
    TResult? Function(BooksMarkDto booksMarkDto)? addRemoveBooksMark,
    TResult? Function(String title)? isBookMarked,
    TResult? Function(String title)? getRemoveBooksMark,
    TResult? Function()? getBooksMark,
  }) {
    return changeHeaderTitle?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeHeaderTitle,
    TResult Function(BooksMarkDto booksMarkDto)? addRemoveBooksMark,
    TResult Function(String title)? isBookMarked,
    TResult Function(String title)? getRemoveBooksMark,
    TResult Function()? getBooksMark,
    required TResult orElse(),
  }) {
    if (changeHeaderTitle != null) {
      return changeHeaderTitle(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeHeaderTitle value) changeHeaderTitle,
    required TResult Function(_AddRemoveBooksMark value) addRemoveBooksMark,
    required TResult Function(_IsBookMarked value) isBookMarked,
    required TResult Function(_GetRemoveBooksMark value) getRemoveBooksMark,
    required TResult Function(_GetBooksMark value) getBooksMark,
  }) {
    return changeHeaderTitle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeHeaderTitle value)? changeHeaderTitle,
    TResult? Function(_AddRemoveBooksMark value)? addRemoveBooksMark,
    TResult? Function(_IsBookMarked value)? isBookMarked,
    TResult? Function(_GetRemoveBooksMark value)? getRemoveBooksMark,
    TResult? Function(_GetBooksMark value)? getBooksMark,
  }) {
    return changeHeaderTitle?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeHeaderTitle value)? changeHeaderTitle,
    TResult Function(_AddRemoveBooksMark value)? addRemoveBooksMark,
    TResult Function(_IsBookMarked value)? isBookMarked,
    TResult Function(_GetRemoveBooksMark value)? getRemoveBooksMark,
    TResult Function(_GetBooksMark value)? getBooksMark,
    required TResult orElse(),
  }) {
    if (changeHeaderTitle != null) {
      return changeHeaderTitle(this);
    }
    return orElse();
  }
}

abstract class _ChangeHeaderTitle implements BooksMarkEvent {
  const factory _ChangeHeaderTitle(final String title) =
      _$ChangeHeaderTitleImpl;

  String get title;
  @JsonKey(ignore: true)
  _$$ChangeHeaderTitleImplCopyWith<_$ChangeHeaderTitleImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddRemoveBooksMarkImplCopyWith<$Res> {
  factory _$$AddRemoveBooksMarkImplCopyWith(_$AddRemoveBooksMarkImpl value,
          $Res Function(_$AddRemoveBooksMarkImpl) then) =
      __$$AddRemoveBooksMarkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({BooksMarkDto booksMarkDto});
}

/// @nodoc
class __$$AddRemoveBooksMarkImplCopyWithImpl<$Res>
    extends _$BooksMarkEventCopyWithImpl<$Res, _$AddRemoveBooksMarkImpl>
    implements _$$AddRemoveBooksMarkImplCopyWith<$Res> {
  __$$AddRemoveBooksMarkImplCopyWithImpl(_$AddRemoveBooksMarkImpl _value,
      $Res Function(_$AddRemoveBooksMarkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? booksMarkDto = null,
  }) {
    return _then(_$AddRemoveBooksMarkImpl(
      null == booksMarkDto
          ? _value.booksMarkDto
          : booksMarkDto // ignore: cast_nullable_to_non_nullable
              as BooksMarkDto,
    ));
  }
}

/// @nodoc

class _$AddRemoveBooksMarkImpl implements _AddRemoveBooksMark {
  const _$AddRemoveBooksMarkImpl(this.booksMarkDto);

  @override
  final BooksMarkDto booksMarkDto;

  @override
  String toString() {
    return 'BooksMarkEvent.addRemoveBooksMark(booksMarkDto: $booksMarkDto)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddRemoveBooksMarkImpl &&
            (identical(other.booksMarkDto, booksMarkDto) ||
                other.booksMarkDto == booksMarkDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, booksMarkDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddRemoveBooksMarkImplCopyWith<_$AddRemoveBooksMarkImpl> get copyWith =>
      __$$AddRemoveBooksMarkImplCopyWithImpl<_$AddRemoveBooksMarkImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeHeaderTitle,
    required TResult Function(BooksMarkDto booksMarkDto) addRemoveBooksMark,
    required TResult Function(String title) isBookMarked,
    required TResult Function(String title) getRemoveBooksMark,
    required TResult Function() getBooksMark,
  }) {
    return addRemoveBooksMark(booksMarkDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeHeaderTitle,
    TResult? Function(BooksMarkDto booksMarkDto)? addRemoveBooksMark,
    TResult? Function(String title)? isBookMarked,
    TResult? Function(String title)? getRemoveBooksMark,
    TResult? Function()? getBooksMark,
  }) {
    return addRemoveBooksMark?.call(booksMarkDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeHeaderTitle,
    TResult Function(BooksMarkDto booksMarkDto)? addRemoveBooksMark,
    TResult Function(String title)? isBookMarked,
    TResult Function(String title)? getRemoveBooksMark,
    TResult Function()? getBooksMark,
    required TResult orElse(),
  }) {
    if (addRemoveBooksMark != null) {
      return addRemoveBooksMark(booksMarkDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeHeaderTitle value) changeHeaderTitle,
    required TResult Function(_AddRemoveBooksMark value) addRemoveBooksMark,
    required TResult Function(_IsBookMarked value) isBookMarked,
    required TResult Function(_GetRemoveBooksMark value) getRemoveBooksMark,
    required TResult Function(_GetBooksMark value) getBooksMark,
  }) {
    return addRemoveBooksMark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeHeaderTitle value)? changeHeaderTitle,
    TResult? Function(_AddRemoveBooksMark value)? addRemoveBooksMark,
    TResult? Function(_IsBookMarked value)? isBookMarked,
    TResult? Function(_GetRemoveBooksMark value)? getRemoveBooksMark,
    TResult? Function(_GetBooksMark value)? getBooksMark,
  }) {
    return addRemoveBooksMark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeHeaderTitle value)? changeHeaderTitle,
    TResult Function(_AddRemoveBooksMark value)? addRemoveBooksMark,
    TResult Function(_IsBookMarked value)? isBookMarked,
    TResult Function(_GetRemoveBooksMark value)? getRemoveBooksMark,
    TResult Function(_GetBooksMark value)? getBooksMark,
    required TResult orElse(),
  }) {
    if (addRemoveBooksMark != null) {
      return addRemoveBooksMark(this);
    }
    return orElse();
  }
}

abstract class _AddRemoveBooksMark implements BooksMarkEvent {
  const factory _AddRemoveBooksMark(final BooksMarkDto booksMarkDto) =
      _$AddRemoveBooksMarkImpl;

  BooksMarkDto get booksMarkDto;
  @JsonKey(ignore: true)
  _$$AddRemoveBooksMarkImplCopyWith<_$AddRemoveBooksMarkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$IsBookMarkedImplCopyWith<$Res> {
  factory _$$IsBookMarkedImplCopyWith(
          _$IsBookMarkedImpl value, $Res Function(_$IsBookMarkedImpl) then) =
      __$$IsBookMarkedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$IsBookMarkedImplCopyWithImpl<$Res>
    extends _$BooksMarkEventCopyWithImpl<$Res, _$IsBookMarkedImpl>
    implements _$$IsBookMarkedImplCopyWith<$Res> {
  __$$IsBookMarkedImplCopyWithImpl(
      _$IsBookMarkedImpl _value, $Res Function(_$IsBookMarkedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$IsBookMarkedImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$IsBookMarkedImpl implements _IsBookMarked {
  const _$IsBookMarkedImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'BooksMarkEvent.isBookMarked(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$IsBookMarkedImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$IsBookMarkedImplCopyWith<_$IsBookMarkedImpl> get copyWith =>
      __$$IsBookMarkedImplCopyWithImpl<_$IsBookMarkedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeHeaderTitle,
    required TResult Function(BooksMarkDto booksMarkDto) addRemoveBooksMark,
    required TResult Function(String title) isBookMarked,
    required TResult Function(String title) getRemoveBooksMark,
    required TResult Function() getBooksMark,
  }) {
    return isBookMarked(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeHeaderTitle,
    TResult? Function(BooksMarkDto booksMarkDto)? addRemoveBooksMark,
    TResult? Function(String title)? isBookMarked,
    TResult? Function(String title)? getRemoveBooksMark,
    TResult? Function()? getBooksMark,
  }) {
    return isBookMarked?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeHeaderTitle,
    TResult Function(BooksMarkDto booksMarkDto)? addRemoveBooksMark,
    TResult Function(String title)? isBookMarked,
    TResult Function(String title)? getRemoveBooksMark,
    TResult Function()? getBooksMark,
    required TResult orElse(),
  }) {
    if (isBookMarked != null) {
      return isBookMarked(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeHeaderTitle value) changeHeaderTitle,
    required TResult Function(_AddRemoveBooksMark value) addRemoveBooksMark,
    required TResult Function(_IsBookMarked value) isBookMarked,
    required TResult Function(_GetRemoveBooksMark value) getRemoveBooksMark,
    required TResult Function(_GetBooksMark value) getBooksMark,
  }) {
    return isBookMarked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeHeaderTitle value)? changeHeaderTitle,
    TResult? Function(_AddRemoveBooksMark value)? addRemoveBooksMark,
    TResult? Function(_IsBookMarked value)? isBookMarked,
    TResult? Function(_GetRemoveBooksMark value)? getRemoveBooksMark,
    TResult? Function(_GetBooksMark value)? getBooksMark,
  }) {
    return isBookMarked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeHeaderTitle value)? changeHeaderTitle,
    TResult Function(_AddRemoveBooksMark value)? addRemoveBooksMark,
    TResult Function(_IsBookMarked value)? isBookMarked,
    TResult Function(_GetRemoveBooksMark value)? getRemoveBooksMark,
    TResult Function(_GetBooksMark value)? getBooksMark,
    required TResult orElse(),
  }) {
    if (isBookMarked != null) {
      return isBookMarked(this);
    }
    return orElse();
  }
}

abstract class _IsBookMarked implements BooksMarkEvent {
  const factory _IsBookMarked(final String title) = _$IsBookMarkedImpl;

  String get title;
  @JsonKey(ignore: true)
  _$$IsBookMarkedImplCopyWith<_$IsBookMarkedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetRemoveBooksMarkImplCopyWith<$Res> {
  factory _$$GetRemoveBooksMarkImplCopyWith(_$GetRemoveBooksMarkImpl value,
          $Res Function(_$GetRemoveBooksMarkImpl) then) =
      __$$GetRemoveBooksMarkImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$GetRemoveBooksMarkImplCopyWithImpl<$Res>
    extends _$BooksMarkEventCopyWithImpl<$Res, _$GetRemoveBooksMarkImpl>
    implements _$$GetRemoveBooksMarkImplCopyWith<$Res> {
  __$$GetRemoveBooksMarkImplCopyWithImpl(_$GetRemoveBooksMarkImpl _value,
      $Res Function(_$GetRemoveBooksMarkImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$GetRemoveBooksMarkImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetRemoveBooksMarkImpl implements _GetRemoveBooksMark {
  const _$GetRemoveBooksMarkImpl(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'BooksMarkEvent.getRemoveBooksMark(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetRemoveBooksMarkImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetRemoveBooksMarkImplCopyWith<_$GetRemoveBooksMarkImpl> get copyWith =>
      __$$GetRemoveBooksMarkImplCopyWithImpl<_$GetRemoveBooksMarkImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeHeaderTitle,
    required TResult Function(BooksMarkDto booksMarkDto) addRemoveBooksMark,
    required TResult Function(String title) isBookMarked,
    required TResult Function(String title) getRemoveBooksMark,
    required TResult Function() getBooksMark,
  }) {
    return getRemoveBooksMark(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeHeaderTitle,
    TResult? Function(BooksMarkDto booksMarkDto)? addRemoveBooksMark,
    TResult? Function(String title)? isBookMarked,
    TResult? Function(String title)? getRemoveBooksMark,
    TResult? Function()? getBooksMark,
  }) {
    return getRemoveBooksMark?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeHeaderTitle,
    TResult Function(BooksMarkDto booksMarkDto)? addRemoveBooksMark,
    TResult Function(String title)? isBookMarked,
    TResult Function(String title)? getRemoveBooksMark,
    TResult Function()? getBooksMark,
    required TResult orElse(),
  }) {
    if (getRemoveBooksMark != null) {
      return getRemoveBooksMark(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeHeaderTitle value) changeHeaderTitle,
    required TResult Function(_AddRemoveBooksMark value) addRemoveBooksMark,
    required TResult Function(_IsBookMarked value) isBookMarked,
    required TResult Function(_GetRemoveBooksMark value) getRemoveBooksMark,
    required TResult Function(_GetBooksMark value) getBooksMark,
  }) {
    return getRemoveBooksMark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeHeaderTitle value)? changeHeaderTitle,
    TResult? Function(_AddRemoveBooksMark value)? addRemoveBooksMark,
    TResult? Function(_IsBookMarked value)? isBookMarked,
    TResult? Function(_GetRemoveBooksMark value)? getRemoveBooksMark,
    TResult? Function(_GetBooksMark value)? getBooksMark,
  }) {
    return getRemoveBooksMark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeHeaderTitle value)? changeHeaderTitle,
    TResult Function(_AddRemoveBooksMark value)? addRemoveBooksMark,
    TResult Function(_IsBookMarked value)? isBookMarked,
    TResult Function(_GetRemoveBooksMark value)? getRemoveBooksMark,
    TResult Function(_GetBooksMark value)? getBooksMark,
    required TResult orElse(),
  }) {
    if (getRemoveBooksMark != null) {
      return getRemoveBooksMark(this);
    }
    return orElse();
  }
}

abstract class _GetRemoveBooksMark implements BooksMarkEvent {
  const factory _GetRemoveBooksMark(final String title) =
      _$GetRemoveBooksMarkImpl;

  String get title;
  @JsonKey(ignore: true)
  _$$GetRemoveBooksMarkImplCopyWith<_$GetRemoveBooksMarkImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetBooksMarkImplCopyWith<$Res> {
  factory _$$GetBooksMarkImplCopyWith(
          _$GetBooksMarkImpl value, $Res Function(_$GetBooksMarkImpl) then) =
      __$$GetBooksMarkImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetBooksMarkImplCopyWithImpl<$Res>
    extends _$BooksMarkEventCopyWithImpl<$Res, _$GetBooksMarkImpl>
    implements _$$GetBooksMarkImplCopyWith<$Res> {
  __$$GetBooksMarkImplCopyWithImpl(
      _$GetBooksMarkImpl _value, $Res Function(_$GetBooksMarkImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetBooksMarkImpl implements _GetBooksMark {
  const _$GetBooksMarkImpl();

  @override
  String toString() {
    return 'BooksMarkEvent.getBooksMark()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetBooksMarkImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) changeHeaderTitle,
    required TResult Function(BooksMarkDto booksMarkDto) addRemoveBooksMark,
    required TResult Function(String title) isBookMarked,
    required TResult Function(String title) getRemoveBooksMark,
    required TResult Function() getBooksMark,
  }) {
    return getBooksMark();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String title)? changeHeaderTitle,
    TResult? Function(BooksMarkDto booksMarkDto)? addRemoveBooksMark,
    TResult? Function(String title)? isBookMarked,
    TResult? Function(String title)? getRemoveBooksMark,
    TResult? Function()? getBooksMark,
  }) {
    return getBooksMark?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? changeHeaderTitle,
    TResult Function(BooksMarkDto booksMarkDto)? addRemoveBooksMark,
    TResult Function(String title)? isBookMarked,
    TResult Function(String title)? getRemoveBooksMark,
    TResult Function()? getBooksMark,
    required TResult orElse(),
  }) {
    if (getBooksMark != null) {
      return getBooksMark();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ChangeHeaderTitle value) changeHeaderTitle,
    required TResult Function(_AddRemoveBooksMark value) addRemoveBooksMark,
    required TResult Function(_IsBookMarked value) isBookMarked,
    required TResult Function(_GetRemoveBooksMark value) getRemoveBooksMark,
    required TResult Function(_GetBooksMark value) getBooksMark,
  }) {
    return getBooksMark(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ChangeHeaderTitle value)? changeHeaderTitle,
    TResult? Function(_AddRemoveBooksMark value)? addRemoveBooksMark,
    TResult? Function(_IsBookMarked value)? isBookMarked,
    TResult? Function(_GetRemoveBooksMark value)? getRemoveBooksMark,
    TResult? Function(_GetBooksMark value)? getBooksMark,
  }) {
    return getBooksMark?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ChangeHeaderTitle value)? changeHeaderTitle,
    TResult Function(_AddRemoveBooksMark value)? addRemoveBooksMark,
    TResult Function(_IsBookMarked value)? isBookMarked,
    TResult Function(_GetRemoveBooksMark value)? getRemoveBooksMark,
    TResult Function(_GetBooksMark value)? getBooksMark,
    required TResult orElse(),
  }) {
    if (getBooksMark != null) {
      return getBooksMark(this);
    }
    return orElse();
  }
}

abstract class _GetBooksMark implements BooksMarkEvent {
  const factory _GetBooksMark() = _$GetBooksMarkImpl;
}

/// @nodoc
mixin _$BooksMarkState {
  String get headerTitle => throw _privateConstructorUsedError;
  bool get isBookMarked => throw _privateConstructorUsedError;
  List<BooksMarkDto> get failureOrSuccess => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BooksMarkStateCopyWith<BooksMarkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BooksMarkStateCopyWith<$Res> {
  factory $BooksMarkStateCopyWith(
          BooksMarkState value, $Res Function(BooksMarkState) then) =
      _$BooksMarkStateCopyWithImpl<$Res, BooksMarkState>;
  @useResult
  $Res call(
      {String headerTitle,
      bool isBookMarked,
      List<BooksMarkDto> failureOrSuccess});
}

/// @nodoc
class _$BooksMarkStateCopyWithImpl<$Res, $Val extends BooksMarkState>
    implements $BooksMarkStateCopyWith<$Res> {
  _$BooksMarkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headerTitle = null,
    Object? isBookMarked = null,
    Object? failureOrSuccess = null,
  }) {
    return _then(_value.copyWith(
      headerTitle: null == headerTitle
          ? _value.headerTitle
          : headerTitle // ignore: cast_nullable_to_non_nullable
              as String,
      isBookMarked: null == isBookMarked
          ? _value.isBookMarked
          : isBookMarked // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: null == failureOrSuccess
          ? _value.failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as List<BooksMarkDto>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BooksMarkStateImplCopyWith<$Res>
    implements $BooksMarkStateCopyWith<$Res> {
  factory _$$BooksMarkStateImplCopyWith(_$BooksMarkStateImpl value,
          $Res Function(_$BooksMarkStateImpl) then) =
      __$$BooksMarkStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String headerTitle,
      bool isBookMarked,
      List<BooksMarkDto> failureOrSuccess});
}

/// @nodoc
class __$$BooksMarkStateImplCopyWithImpl<$Res>
    extends _$BooksMarkStateCopyWithImpl<$Res, _$BooksMarkStateImpl>
    implements _$$BooksMarkStateImplCopyWith<$Res> {
  __$$BooksMarkStateImplCopyWithImpl(
      _$BooksMarkStateImpl _value, $Res Function(_$BooksMarkStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? headerTitle = null,
    Object? isBookMarked = null,
    Object? failureOrSuccess = null,
  }) {
    return _then(_$BooksMarkStateImpl(
      headerTitle: null == headerTitle
          ? _value.headerTitle
          : headerTitle // ignore: cast_nullable_to_non_nullable
              as String,
      isBookMarked: null == isBookMarked
          ? _value.isBookMarked
          : isBookMarked // ignore: cast_nullable_to_non_nullable
              as bool,
      failureOrSuccess: null == failureOrSuccess
          ? _value._failureOrSuccess
          : failureOrSuccess // ignore: cast_nullable_to_non_nullable
              as List<BooksMarkDto>,
    ));
  }
}

/// @nodoc

class _$BooksMarkStateImpl implements _BooksMarkState {
  const _$BooksMarkStateImpl(
      {required this.headerTitle,
      required this.isBookMarked,
      required final List<BooksMarkDto> failureOrSuccess})
      : _failureOrSuccess = failureOrSuccess;

  @override
  final String headerTitle;
  @override
  final bool isBookMarked;
  final List<BooksMarkDto> _failureOrSuccess;
  @override
  List<BooksMarkDto> get failureOrSuccess {
    if (_failureOrSuccess is EqualUnmodifiableListView)
      return _failureOrSuccess;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_failureOrSuccess);
  }

  @override
  String toString() {
    return 'BooksMarkState(headerTitle: $headerTitle, isBookMarked: $isBookMarked, failureOrSuccess: $failureOrSuccess)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BooksMarkStateImpl &&
            (identical(other.headerTitle, headerTitle) ||
                other.headerTitle == headerTitle) &&
            (identical(other.isBookMarked, isBookMarked) ||
                other.isBookMarked == isBookMarked) &&
            const DeepCollectionEquality()
                .equals(other._failureOrSuccess, _failureOrSuccess));
  }

  @override
  int get hashCode => Object.hash(runtimeType, headerTitle, isBookMarked,
      const DeepCollectionEquality().hash(_failureOrSuccess));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BooksMarkStateImplCopyWith<_$BooksMarkStateImpl> get copyWith =>
      __$$BooksMarkStateImplCopyWithImpl<_$BooksMarkStateImpl>(
          this, _$identity);
}

abstract class _BooksMarkState implements BooksMarkState {
  const factory _BooksMarkState(
          {required final String headerTitle,
          required final bool isBookMarked,
          required final List<BooksMarkDto> failureOrSuccess}) =
      _$BooksMarkStateImpl;

  @override
  String get headerTitle;
  @override
  bool get isBookMarked;
  @override
  List<BooksMarkDto> get failureOrSuccess;
  @override
  @JsonKey(ignore: true)
  _$$BooksMarkStateImplCopyWith<_$BooksMarkStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
