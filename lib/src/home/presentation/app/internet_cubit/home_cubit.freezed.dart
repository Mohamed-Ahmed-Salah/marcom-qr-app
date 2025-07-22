// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HomeState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState()';
}


}

/// @nodoc
class $HomeStateCopyWith<$Res>  {
$HomeStateCopyWith(HomeState _, $Res Function(HomeState) __);
}


/// Adds pattern-matching-related methods to [HomeState].
extension HomeStatePatterns on HomeState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitialState value)?  initial,TResult Function( LoadingState value)?  loading,TResult Function( DisconnectedState value)?  disconnected,TResult Function( ConnectedState value)?  connected,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitialState() when initial != null:
return initial(_that);case LoadingState() when loading != null:
return loading(_that);case DisconnectedState() when disconnected != null:
return disconnected(_that);case ConnectedState() when connected != null:
return connected(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitialState value)  initial,required TResult Function( LoadingState value)  loading,required TResult Function( DisconnectedState value)  disconnected,required TResult Function( ConnectedState value)  connected,}){
final _that = this;
switch (_that) {
case InitialState():
return initial(_that);case LoadingState():
return loading(_that);case DisconnectedState():
return disconnected(_that);case ConnectedState():
return connected(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitialState value)?  initial,TResult? Function( LoadingState value)?  loading,TResult? Function( DisconnectedState value)?  disconnected,TResult? Function( ConnectedState value)?  connected,}){
final _that = this;
switch (_that) {
case InitialState() when initial != null:
return initial(_that);case LoadingState() when loading != null:
return loading(_that);case DisconnectedState() when disconnected != null:
return disconnected(_that);case ConnectedState() when connected != null:
return connected(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  disconnected,TResult Function()?  connected,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitialState() when initial != null:
return initial();case LoadingState() when loading != null:
return loading();case DisconnectedState() when disconnected != null:
return disconnected();case ConnectedState() when connected != null:
return connected();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  disconnected,required TResult Function()  connected,}) {final _that = this;
switch (_that) {
case InitialState():
return initial();case LoadingState():
return loading();case DisconnectedState():
return disconnected();case ConnectedState():
return connected();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  disconnected,TResult? Function()?  connected,}) {final _that = this;
switch (_that) {
case InitialState() when initial != null:
return initial();case LoadingState() when loading != null:
return loading();case DisconnectedState() when disconnected != null:
return disconnected();case ConnectedState() when connected != null:
return connected();case _:
  return null;

}
}

}

/// @nodoc


class InitialState implements HomeState {
  const InitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.initial()';
}


}




/// @nodoc


class LoadingState implements HomeState {
  const LoadingState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.loading()';
}


}




/// @nodoc


class DisconnectedState implements HomeState {
  const DisconnectedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisconnectedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.disconnected()';
}


}




/// @nodoc


class ConnectedState implements HomeState {
  const ConnectedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ConnectedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HomeState.connected()';
}


}




// dart format on
