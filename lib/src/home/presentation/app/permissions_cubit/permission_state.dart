part of 'permission_cubit.dart';
@freezed
sealed class PermissionState with _$PermissionState {

  const factory PermissionState.initial() = InitialState;
  const factory PermissionState.granted() = GrantedState;
  const factory PermissionState.denied() = DeniedState;
  const factory PermissionState.permanatelyDenied() = PerminatelyDeniedState;
}

