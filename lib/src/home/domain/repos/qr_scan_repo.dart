

import 'package:marcom_qr/core/config/typedefs.dart';
import 'package:marcom_qr/src/home/data/model/user_response.dart';

abstract class QrScanRep {
  ResultFuture<UserResponse> scanQr({required String registrationId});


}
