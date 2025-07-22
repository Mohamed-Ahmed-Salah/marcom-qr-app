// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scan_qr_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ScanQrState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ScanQrState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ScanQrState()';
}


}

/// @nodoc
class $ScanQrStateCopyWith<$Res>  {
$ScanQrStateCopyWith(ScanQrState _, $Res Function(ScanQrState) __);
}


/// Adds pattern-matching-related methods to [ScanQrState].
extension ScanQrStatePatterns on ScanQrState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitialState value)?  initial,TResult Function( LoadingState value)?  loading,TResult Function( SuccessState value)?  success,TResult Function( FailedState value)?  failed,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitialState() when initial != null:
return initial(_that);case LoadingState() when loading != null:
return loading(_that);case SuccessState() when success != null:
return success(_that);case FailedState() when failed != null:
return failed(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitialState value)  initial,required TResult Function( LoadingState value)  loading,required TResult Function( SuccessState value)  success,required TResult Function( FailedState value)  failed,}){
final _that = this;
switch (_that) {
case InitialState():
return initial(_that);case LoadingState():
return loading(_that);case SuccessState():
return success(_that);case FailedState():
return failed(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitialState value)?  initial,TResult? Function( LoadingState value)?  loading,TResult? Function( SuccessState value)?  success,TResult? Function( FailedState value)?  failed,}){
final _that = this;
switch (_that) {
case InitialState() when initial != null:
return initial(_that);case LoadingState() when loading != null:
return loading(_that);case SuccessState() when success != null:
return success(_that);case FailedState() when failed != null:
return failed(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( UserResponse user)?  success,TResult Function( String message,  String registrationID)?  failed,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitialState() when initial != null:
return initial();case LoadingState() when loading != null:
return loading();case SuccessState() when success != null:
return success(_that.user);case FailedState() when failed != null:
return failed(_that.message,_that.registrationID);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( UserResponse user)  success,required TResult Function( String message,  String registrationID)  failed,}) {final _that = this;
switch (_that) {
case InitialState():
return initial();case LoadingState():
return loading();case SuccessState():
return success(_that.user);case FailedState():
return failed(_that.message,_that.registrationID);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( UserResponse user)?  success,TResult? Function( String message,  String registrationID)?  failed,}) {final _that = this;
switch (_that) {
case InitialState() when initial != null:
return initial();case LoadingState() when loading != null:
return loading();case SuccessState() when success != null:
return success(_that.user);case FailedState() when failed != null:
return failed(_that.message,_that.registrationID);case _:
  return null;

}
}

}

/// @nodoc


class InitialState implements ScanQrState {
  const InitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ScanQrState.initial()';
}


}




/// @nodoc


class LoadingState implements ScanQrState {
  const LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ScanQrState.loading()';
}


}




/// @nodoc


class SuccessState implements ScanQrState {
  const SuccessState({required this.user});
  

 final  UserResponse user;

/// Create a copy of ScanQrState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SuccessStateCopyWith<SuccessState> get copyWith => _$SuccessStateCopyWithImpl<SuccessState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SuccessState&&(identical(other.user, user) || other.user == user));
}


@override
int get hashCode => Object.hash(runtimeType,user);

@override
String toString() {
  return 'ScanQrState.success(user: $user)';
}


}

/// @nodoc
abstract mixin class $SuccessStateCopyWith<$Res> implements $ScanQrStateCopyWith<$Res> {
  factory $SuccessStateCopyWith(SuccessState value, $Res Function(SuccessState) _then) = _$SuccessStateCopyWithImpl;
@useResult
$Res call({
 UserResponse user
});




}
/// @nodoc
class _$SuccessStateCopyWithImpl<$Res>
    implements $SuccessStateCopyWith<$Res> {
  _$SuccessStateCopyWithImpl(this._self, this._then);

  final SuccessState _self;
  final $Res Function(SuccessState) _then;

/// Create a copy of ScanQrState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? user = null,}) {
  return _then(SuccessState(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserResponse,
  ));
}


}

/// @nodoc


class FailedState implements ScanQrState {
  const FailedState({required this.message, required this.registrationID});
  

 final  String message;
 final  String registrationID;

/// Create a copy of ScanQrState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FailedStateCopyWith<FailedState> get copyWith => _$FailedStateCopyWithImpl<FailedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FailedState&&(identical(other.message, message) || other.message == message)&&(identical(other.registrationID, registrationID) || other.registrationID == registrationID));
}


@override
int get hashCode => Object.hash(runtimeType,message,registrationID);

@override
String toString() {
  return 'ScanQrState.failed(message: $message, registrationID: $registrationID)';
}


}

/// @nodoc
abstract mixin class $FailedStateCopyWith<$Res> implements $ScanQrStateCopyWith<$Res> {
  factory $FailedStateCopyWith(FailedState value, $Res Function(FailedState) _then) = _$FailedStateCopyWithImpl;
@useResult
$Res call({
 String message, String registrationID
});




}
/// @nodoc
class _$FailedStateCopyWithImpl<$Res>
    implements $FailedStateCopyWith<$Res> {
  _$FailedStateCopyWithImpl(this._self, this._then);

  final FailedState _self;
  final $Res Function(FailedState) _then;

/// Create a copy of ScanQrState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? registrationID = null,}) {
  return _then(FailedState(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,registrationID: null == registrationID ? _self.registrationID : registrationID // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
