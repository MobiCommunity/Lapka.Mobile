// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'navigator_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NavigatorEventTearOff {
  const _$NavigatorEventTearOff();

  _PushPage pushPage(Widget page) {
    return _PushPage(
      page,
    );
  }

  _PopPage popPage(bool force) {
    return _PopPage(
      force,
    );
  }

  _PushReplacePage pushReplace(Widget page) {
    return _PushReplacePage(
      page,
    );
  }
}

/// @nodoc
const $NavigatorEvent = _$NavigatorEventTearOff();

/// @nodoc
mixin _$NavigatorEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget page) pushPage,
    required TResult Function(bool force) popPage,
    required TResult Function(Widget page) pushReplace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget page)? pushPage,
    TResult Function(bool force)? popPage,
    TResult Function(Widget page)? pushReplace,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PushPage value) pushPage,
    required TResult Function(_PopPage value) popPage,
    required TResult Function(_PushReplacePage value) pushReplace,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PushPage value)? pushPage,
    TResult Function(_PopPage value)? popPage,
    TResult Function(_PushReplacePage value)? pushReplace,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigatorEventCopyWith<$Res> {
  factory $NavigatorEventCopyWith(
          NavigatorEvent value, $Res Function(NavigatorEvent) then) =
      _$NavigatorEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigatorEventCopyWithImpl<$Res>
    implements $NavigatorEventCopyWith<$Res> {
  _$NavigatorEventCopyWithImpl(this._value, this._then);

  final NavigatorEvent _value;
  // ignore: unused_field
  final $Res Function(NavigatorEvent) _then;
}

/// @nodoc
abstract class _$PushPageCopyWith<$Res> {
  factory _$PushPageCopyWith(_PushPage value, $Res Function(_PushPage) then) =
      __$PushPageCopyWithImpl<$Res>;
  $Res call({Widget page});
}

/// @nodoc
class __$PushPageCopyWithImpl<$Res> extends _$NavigatorEventCopyWithImpl<$Res>
    implements _$PushPageCopyWith<$Res> {
  __$PushPageCopyWithImpl(_PushPage _value, $Res Function(_PushPage) _then)
      : super(_value, (v) => _then(v as _PushPage));

  @override
  _PushPage get _value => super._value as _PushPage;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_PushPage(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$_PushPage implements _PushPage {
  const _$_PushPage(this.page);

  @override
  final Widget page;

  @override
  String toString() {
    return 'NavigatorEvent.pushPage(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PushPage &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  _$PushPageCopyWith<_PushPage> get copyWith =>
      __$PushPageCopyWithImpl<_PushPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget page) pushPage,
    required TResult Function(bool force) popPage,
    required TResult Function(Widget page) pushReplace,
  }) {
    return pushPage(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget page)? pushPage,
    TResult Function(bool force)? popPage,
    TResult Function(Widget page)? pushReplace,
    required TResult orElse(),
  }) {
    if (pushPage != null) {
      return pushPage(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PushPage value) pushPage,
    required TResult Function(_PopPage value) popPage,
    required TResult Function(_PushReplacePage value) pushReplace,
  }) {
    return pushPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PushPage value)? pushPage,
    TResult Function(_PopPage value)? popPage,
    TResult Function(_PushReplacePage value)? pushReplace,
    required TResult orElse(),
  }) {
    if (pushPage != null) {
      return pushPage(this);
    }
    return orElse();
  }
}

abstract class _PushPage implements NavigatorEvent {
  const factory _PushPage(Widget page) = _$_PushPage;

  Widget get page => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PushPageCopyWith<_PushPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PopPageCopyWith<$Res> {
  factory _$PopPageCopyWith(_PopPage value, $Res Function(_PopPage) then) =
      __$PopPageCopyWithImpl<$Res>;
  $Res call({bool force});
}

/// @nodoc
class __$PopPageCopyWithImpl<$Res> extends _$NavigatorEventCopyWithImpl<$Res>
    implements _$PopPageCopyWith<$Res> {
  __$PopPageCopyWithImpl(_PopPage _value, $Res Function(_PopPage) _then)
      : super(_value, (v) => _then(v as _PopPage));

  @override
  _PopPage get _value => super._value as _PopPage;

  @override
  $Res call({
    Object? force = freezed,
  }) {
    return _then(_PopPage(
      force == freezed
          ? _value.force
          : force // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PopPage implements _PopPage {
  const _$_PopPage(this.force);

  @override
  final bool force;

  @override
  String toString() {
    return 'NavigatorEvent.popPage(force: $force)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PopPage &&
            (identical(other.force, force) ||
                const DeepCollectionEquality().equals(other.force, force)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(force);

  @JsonKey(ignore: true)
  @override
  _$PopPageCopyWith<_PopPage> get copyWith =>
      __$PopPageCopyWithImpl<_PopPage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget page) pushPage,
    required TResult Function(bool force) popPage,
    required TResult Function(Widget page) pushReplace,
  }) {
    return popPage(force);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget page)? pushPage,
    TResult Function(bool force)? popPage,
    TResult Function(Widget page)? pushReplace,
    required TResult orElse(),
  }) {
    if (popPage != null) {
      return popPage(force);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PushPage value) pushPage,
    required TResult Function(_PopPage value) popPage,
    required TResult Function(_PushReplacePage value) pushReplace,
  }) {
    return popPage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PushPage value)? pushPage,
    TResult Function(_PopPage value)? popPage,
    TResult Function(_PushReplacePage value)? pushReplace,
    required TResult orElse(),
  }) {
    if (popPage != null) {
      return popPage(this);
    }
    return orElse();
  }
}

abstract class _PopPage implements NavigatorEvent {
  const factory _PopPage(bool force) = _$_PopPage;

  bool get force => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PopPageCopyWith<_PopPage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PushReplacePageCopyWith<$Res> {
  factory _$PushReplacePageCopyWith(
          _PushReplacePage value, $Res Function(_PushReplacePage) then) =
      __$PushReplacePageCopyWithImpl<$Res>;
  $Res call({Widget page});
}

/// @nodoc
class __$PushReplacePageCopyWithImpl<$Res>
    extends _$NavigatorEventCopyWithImpl<$Res>
    implements _$PushReplacePageCopyWith<$Res> {
  __$PushReplacePageCopyWithImpl(
      _PushReplacePage _value, $Res Function(_PushReplacePage) _then)
      : super(_value, (v) => _then(v as _PushReplacePage));

  @override
  _PushReplacePage get _value => super._value as _PushReplacePage;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_PushReplacePage(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as Widget,
    ));
  }
}

/// @nodoc

class _$_PushReplacePage implements _PushReplacePage {
  const _$_PushReplacePage(this.page);

  @override
  final Widget page;

  @override
  String toString() {
    return 'NavigatorEvent.pushReplace(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PushReplacePage &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  _$PushReplacePageCopyWith<_PushReplacePage> get copyWith =>
      __$PushReplacePageCopyWithImpl<_PushReplacePage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Widget page) pushPage,
    required TResult Function(bool force) popPage,
    required TResult Function(Widget page) pushReplace,
  }) {
    return pushReplace(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Widget page)? pushPage,
    TResult Function(bool force)? popPage,
    TResult Function(Widget page)? pushReplace,
    required TResult orElse(),
  }) {
    if (pushReplace != null) {
      return pushReplace(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PushPage value) pushPage,
    required TResult Function(_PopPage value) popPage,
    required TResult Function(_PushReplacePage value) pushReplace,
  }) {
    return pushReplace(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PushPage value)? pushPage,
    TResult Function(_PopPage value)? popPage,
    TResult Function(_PushReplacePage value)? pushReplace,
    required TResult orElse(),
  }) {
    if (pushReplace != null) {
      return pushReplace(this);
    }
    return orElse();
  }
}

abstract class _PushReplacePage implements NavigatorEvent {
  const factory _PushReplacePage(Widget page) = _$_PushReplacePage;

  Widget get page => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PushReplacePageCopyWith<_PushReplacePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NavigatorMyStateTearOff {
  const _$NavigatorMyStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Push push(MaterialPage<dynamic> page) {
    return _Push(
      page,
    );
  }

  _PushReplace pushReplace(MaterialPage<dynamic> page) {
    return _PushReplace(
      page,
    );
  }

  _Pop pop(bool force) {
    return _Pop(
      force,
    );
  }
}

/// @nodoc
const $NavigatorMyState = _$NavigatorMyStateTearOff();

/// @nodoc
mixin _$NavigatorMyState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MaterialPage<dynamic> page) push,
    required TResult Function(MaterialPage<dynamic> page) pushReplace,
    required TResult Function(bool force) pop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MaterialPage<dynamic> page)? push,
    TResult Function(MaterialPage<dynamic> page)? pushReplace,
    TResult Function(bool force)? pop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Push value) push,
    required TResult Function(_PushReplace value) pushReplace,
    required TResult Function(_Pop value) pop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Push value)? push,
    TResult Function(_PushReplace value)? pushReplace,
    TResult Function(_Pop value)? pop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigatorMyStateCopyWith<$Res> {
  factory $NavigatorMyStateCopyWith(
          NavigatorMyState value, $Res Function(NavigatorMyState) then) =
      _$NavigatorMyStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$NavigatorMyStateCopyWithImpl<$Res>
    implements $NavigatorMyStateCopyWith<$Res> {
  _$NavigatorMyStateCopyWithImpl(this._value, this._then);

  final NavigatorMyState _value;
  // ignore: unused_field
  final $Res Function(NavigatorMyState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$NavigatorMyStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NavigatorMyState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MaterialPage<dynamic> page) push,
    required TResult Function(MaterialPage<dynamic> page) pushReplace,
    required TResult Function(bool force) pop,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MaterialPage<dynamic> page)? push,
    TResult Function(MaterialPage<dynamic> page)? pushReplace,
    TResult Function(bool force)? pop,
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
    required TResult Function(_Push value) push,
    required TResult Function(_PushReplace value) pushReplace,
    required TResult Function(_Pop value) pop,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Push value)? push,
    TResult Function(_PushReplace value)? pushReplace,
    TResult Function(_Pop value)? pop,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NavigatorMyState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$PushCopyWith<$Res> {
  factory _$PushCopyWith(_Push value, $Res Function(_Push) then) =
      __$PushCopyWithImpl<$Res>;
  $Res call({MaterialPage<dynamic> page});
}

/// @nodoc
class __$PushCopyWithImpl<$Res> extends _$NavigatorMyStateCopyWithImpl<$Res>
    implements _$PushCopyWith<$Res> {
  __$PushCopyWithImpl(_Push _value, $Res Function(_Push) _then)
      : super(_value, (v) => _then(v as _Push));

  @override
  _Push get _value => super._value as _Push;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_Push(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as MaterialPage<dynamic>,
    ));
  }
}

/// @nodoc

class _$_Push implements _Push {
  const _$_Push(this.page);

  @override
  final MaterialPage<dynamic> page;

  @override
  String toString() {
    return 'NavigatorMyState.push(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Push &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  _$PushCopyWith<_Push> get copyWith =>
      __$PushCopyWithImpl<_Push>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MaterialPage<dynamic> page) push,
    required TResult Function(MaterialPage<dynamic> page) pushReplace,
    required TResult Function(bool force) pop,
  }) {
    return push(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MaterialPage<dynamic> page)? push,
    TResult Function(MaterialPage<dynamic> page)? pushReplace,
    TResult Function(bool force)? pop,
    required TResult orElse(),
  }) {
    if (push != null) {
      return push(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Push value) push,
    required TResult Function(_PushReplace value) pushReplace,
    required TResult Function(_Pop value) pop,
  }) {
    return push(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Push value)? push,
    TResult Function(_PushReplace value)? pushReplace,
    TResult Function(_Pop value)? pop,
    required TResult orElse(),
  }) {
    if (push != null) {
      return push(this);
    }
    return orElse();
  }
}

abstract class _Push implements NavigatorMyState {
  const factory _Push(MaterialPage<dynamic> page) = _$_Push;

  MaterialPage<dynamic> get page => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PushCopyWith<_Push> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PushReplaceCopyWith<$Res> {
  factory _$PushReplaceCopyWith(
          _PushReplace value, $Res Function(_PushReplace) then) =
      __$PushReplaceCopyWithImpl<$Res>;
  $Res call({MaterialPage<dynamic> page});
}

/// @nodoc
class __$PushReplaceCopyWithImpl<$Res>
    extends _$NavigatorMyStateCopyWithImpl<$Res>
    implements _$PushReplaceCopyWith<$Res> {
  __$PushReplaceCopyWithImpl(
      _PushReplace _value, $Res Function(_PushReplace) _then)
      : super(_value, (v) => _then(v as _PushReplace));

  @override
  _PushReplace get _value => super._value as _PushReplace;

  @override
  $Res call({
    Object? page = freezed,
  }) {
    return _then(_PushReplace(
      page == freezed
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as MaterialPage<dynamic>,
    ));
  }
}

/// @nodoc

class _$_PushReplace implements _PushReplace {
  const _$_PushReplace(this.page);

  @override
  final MaterialPage<dynamic> page;

  @override
  String toString() {
    return 'NavigatorMyState.pushReplace(page: $page)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PushReplace &&
            (identical(other.page, page) ||
                const DeepCollectionEquality().equals(other.page, page)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(page);

  @JsonKey(ignore: true)
  @override
  _$PushReplaceCopyWith<_PushReplace> get copyWith =>
      __$PushReplaceCopyWithImpl<_PushReplace>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MaterialPage<dynamic> page) push,
    required TResult Function(MaterialPage<dynamic> page) pushReplace,
    required TResult Function(bool force) pop,
  }) {
    return pushReplace(page);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MaterialPage<dynamic> page)? push,
    TResult Function(MaterialPage<dynamic> page)? pushReplace,
    TResult Function(bool force)? pop,
    required TResult orElse(),
  }) {
    if (pushReplace != null) {
      return pushReplace(page);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Push value) push,
    required TResult Function(_PushReplace value) pushReplace,
    required TResult Function(_Pop value) pop,
  }) {
    return pushReplace(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Push value)? push,
    TResult Function(_PushReplace value)? pushReplace,
    TResult Function(_Pop value)? pop,
    required TResult orElse(),
  }) {
    if (pushReplace != null) {
      return pushReplace(this);
    }
    return orElse();
  }
}

abstract class _PushReplace implements NavigatorMyState {
  const factory _PushReplace(MaterialPage<dynamic> page) = _$_PushReplace;

  MaterialPage<dynamic> get page => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PushReplaceCopyWith<_PushReplace> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$PopCopyWith<$Res> {
  factory _$PopCopyWith(_Pop value, $Res Function(_Pop) then) =
      __$PopCopyWithImpl<$Res>;
  $Res call({bool force});
}

/// @nodoc
class __$PopCopyWithImpl<$Res> extends _$NavigatorMyStateCopyWithImpl<$Res>
    implements _$PopCopyWith<$Res> {
  __$PopCopyWithImpl(_Pop _value, $Res Function(_Pop) _then)
      : super(_value, (v) => _then(v as _Pop));

  @override
  _Pop get _value => super._value as _Pop;

  @override
  $Res call({
    Object? force = freezed,
  }) {
    return _then(_Pop(
      force == freezed
          ? _value.force
          : force // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_Pop implements _Pop {
  const _$_Pop(this.force);

  @override
  final bool force;

  @override
  String toString() {
    return 'NavigatorMyState.pop(force: $force)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Pop &&
            (identical(other.force, force) ||
                const DeepCollectionEquality().equals(other.force, force)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(force);

  @JsonKey(ignore: true)
  @override
  _$PopCopyWith<_Pop> get copyWith =>
      __$PopCopyWithImpl<_Pop>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(MaterialPage<dynamic> page) push,
    required TResult Function(MaterialPage<dynamic> page) pushReplace,
    required TResult Function(bool force) pop,
  }) {
    return pop(force);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(MaterialPage<dynamic> page)? push,
    TResult Function(MaterialPage<dynamic> page)? pushReplace,
    TResult Function(bool force)? pop,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop(force);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Push value) push,
    required TResult Function(_PushReplace value) pushReplace,
    required TResult Function(_Pop value) pop,
  }) {
    return pop(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Push value)? push,
    TResult Function(_PushReplace value)? pushReplace,
    TResult Function(_Pop value)? pop,
    required TResult orElse(),
  }) {
    if (pop != null) {
      return pop(this);
    }
    return orElse();
  }
}

abstract class _Pop implements NavigatorMyState {
  const factory _Pop(bool force) = _$_Pop;

  bool get force => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$PopCopyWith<_Pop> get copyWith => throw _privateConstructorUsedError;
}
