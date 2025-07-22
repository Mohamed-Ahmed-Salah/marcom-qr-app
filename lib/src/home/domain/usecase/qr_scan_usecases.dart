import 'package:equatable/equatable.dart';
import 'package:marcom_qr/core/config/typedefs.dart';
import 'package:marcom_qr/src/home/data/model/user_response.dart';
import 'package:marcom_qr/src/home/domain/repos/qr_scan_repo.dart';

import '../../../../core/config/usecase.dart' show UsecaseWithParams;

class QrScanUsecases extends UsecaseWithParams<UserResponse, String> {
  const QrScanUsecases(this._repo);

  final QrScanRep _repo;

  @override
  ResultFuture<UserResponse> call(String registrationId) =>
      _repo.scanQr(registrationId: registrationId);
}
