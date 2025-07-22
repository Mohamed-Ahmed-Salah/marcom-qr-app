import 'package:dartz/dartz.dart';
import 'package:marcom_qr/core/config/typedefs.dart';
import 'package:marcom_qr/core/errors/exceptions.dart';
import 'package:marcom_qr/core/errors/failures.dart';
import 'package:marcom_qr/src/home/data/datasources/qr_scan_remote_data_src.dart';
import 'package:marcom_qr/src/home/data/model/user_response.dart';
import 'package:marcom_qr/src/home/domain/repos/qr_scan_repo.dart';

class QrScanRepImpl implements QrScanRep {
  const QrScanRepImpl(this._remoteDataSource);

  final QrScanRemoteDataSrc _remoteDataSource;

  @override
  ResultFuture<UserResponse> scanQr({required String registrationId}) async {
    try {
      final response = await _remoteDataSource.scanQr(
        registrationId: registrationId,
      );
      return Right(response);
    } on ServerException catch (e) {
      return Left(ServerFailure.fromException(e));
    } on NoInternetException catch (e) {
      return Left(NoInternetFailure.fromException(e));
    } on TimeOutException catch (e) {
      return Left(TimeOutFailure.fromException(e));
    } on UserNotFoundException catch (e) {
      return Left(UserNotFoundFailure.fromException(e));
    } catch (e) {
      return Left(
        ServerFailure.fromException(
          ServerException(message: e.toString(), statusCode: 500),
        ),
      );
    }
  }
}
