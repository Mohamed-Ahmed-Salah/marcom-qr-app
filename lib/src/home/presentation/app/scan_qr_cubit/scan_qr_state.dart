part of 'scan_qr_cubit.dart';
@freezed
sealed class ScanQrState with _$ScanQrState {
  const factory ScanQrState.initial() = InitialState;
  const factory ScanQrState.loading() = LoadingState;
  const factory ScanQrState.success({required UserResponse user}) = SuccessState;
  const factory ScanQrState.failed({required String message, required String registrationID}) = FailedState;

}

