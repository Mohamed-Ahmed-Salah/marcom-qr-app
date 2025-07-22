import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:marcom_qr/src/home/data/model/user_response.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:marcom_qr/src/home/domain/usecase/qr_scan_usecases.dart';

part 'scan_qr_cubit.freezed.dart';

part 'scan_qr_state.dart';

class ScanQrCubit extends Cubit<ScanQrState> {
  final QrScanUsecases _qrScanUsecase;

  ScanQrCubit({required QrScanUsecases qrScanUsecase})
    : _qrScanUsecase = qrScanUsecase,
      super(ScanQrState.initial());

  void resetState() {
    emit(ScanQrState.initial());
  }

  void scanQR(String? registeredId) async {
    ///prevent null and calling function when
    debugPrint("registeredId $registeredId");

    if (registeredId == null || state is LoadingState || state is FailedState) {
      debugPrint("LOADING OR NULL OR Failed");
      return;
    }

    /// when success dont re-scan same register id...
    final String? previousRegisteredId = state.whenOrNull(
      success: (r) => r.registrationId,
      // failed: (_, registeredId) => registeredId,
    );
    if (previousRegisteredId != null && registeredId == previousRegisteredId) {
      debugPrint("already success......");
      return;
    }

    emit(const ScanQrState.loading());
    final result = await _qrScanUsecase(registeredId);
    result.fold(
      (failure) {
        debugPrint("failure.errorMessage ${failure.errorMessage}");
        emit(
          ScanQrState.failed(
            message: failure.errorMessage,
            registrationID: registeredId,
          ),
        );
      },
      (user) {
        emit(ScanQrState.success(user: user));
      },
    );
  }
}
