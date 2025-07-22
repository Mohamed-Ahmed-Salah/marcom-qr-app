// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'permission_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PermissionState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PermissionState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PermissionState()';
}


}

/// @nodoc
class $PermissionStateCopyWith<$Res>  {
$PermissionStateCopyWith(PermissionState _, $Res Function(PermissionState) __);
}


/// Adds pattern-matching-related methods to [PermissionState].
extension PermissionStatePatterns on PermissionState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( InitialState value)?  initial,TResult Function( GrantedState value)?  granted,TResult Function( DeniedState value)?  denied,TResult Function( PerminatelyDeniedState value)?  permanatelyDenied,required TResult orElse(),}){
final _that = this;
switch (_that) {
case InitialState() when initial != null:
return initial(_that);case GrantedState() when granted != null:
return granted(_that);case DeniedState() when denied != null:
return denied(_that);case PerminatelyDeniedState() when permanatelyDenied != null:
return permanatelyDenied(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( InitialState value)  initial,required TResult Function( GrantedState value)  granted,required TResult Function( DeniedState value)  denied,required TResult Function( PerminatelyDeniedState value)  permanatelyDenied,}){
final _that = this;
switch (_that) {
case InitialState():
return initial(_that);case GrantedState():
return granted(_that);case DeniedState():
return denied(_that);case PerminatelyDeniedState():
return permanatelyDenied(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( InitialState value)?  initial,TResult? Function( GrantedState value)?  granted,TResult? Function( DeniedState value)?  denied,TResult? Function( PerminatelyDeniedState value)?  permanatelyDenied,}){
final _that = this;
switch (_that) {
case InitialState() when initial != null:
return initial(_that);case GrantedState() when granted != null:
return granted(_that);case DeniedState() when denied != null:
return denied(_that);case PerminatelyDeniedState() when permanatelyDenied != null:
return permanatelyDenied(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  granted,TResult Function()?  denied,TResult Function()?  permanatelyDenied,required TResult orElse(),}) {final _that = this;
switch (_that) {
case InitialState() when initial != null:
return initial();case GrantedState() when granted != null:
return granted();case DeniedState() when denied != null:
return denied();case PerminatelyDeniedState() when permanatelyDenied != null:
return permanatelyDenied();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  granted,required TResult Function()  denied,required TResult Function()  permanatelyDenied,}) {final _that = this;
switch (_that) {
case InitialState():
return initial();case GrantedState():
return granted();case DeniedState():
return denied();case PerminatelyDeniedState():
return permanatelyDenied();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  granted,TResult? Function()?  denied,TResult? Function()?  permanatelyDenied,}) {final _that = this;
switch (_that) {
case InitialState() when initial != null:
return initial();case GrantedState() when granted != null:
return granted();case DeniedState() when denied != null:
return denied();case PerminatelyDeniedState() when permanatelyDenied != null:
return permanatelyDenied();case _:
  return null;

}
}

}

/// @nodoc


class InitialState implements PermissionState {
  const InitialState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is InitialState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PermissionState.initial()';
}


}




/// @nodoc


class GrantedState implements PermissionState {
  const GrantedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GrantedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PermissionState.granted()';
}


}




/// @nodoc


class DeniedState implements PermissionState {
  const DeniedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeniedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PermissionState.denied()';
}


}




/// @nodoc


class PerminatelyDeniedState implements PermissionState {
  const PerminatelyDeniedState();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PerminatelyDeniedState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PermissionState.permanatelyDenied()';
}


}




// dart format on
