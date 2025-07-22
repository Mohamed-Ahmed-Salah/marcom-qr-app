import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:marcom_qr/core/constants/network_constants.dart';
import 'package:marcom_qr/core/errors/exceptions.dart';
import 'package:marcom_qr/src/home/data/model/user_response.dart';

import '../../../../core/errors/error_const.dart';

class QrScanRemoteDataSrcImpl implements QrScanRemoteDataSrc {
  const QrScanRemoteDataSrcImpl(this._dio);

  final Dio _dio;

  @override
  Future<UserResponse> scanQr({required String registrationId}) async {
    try {
      final header = await NetworkConstants.getHeaders();
      final response = await _dio
          .post(
            '${NetworkConstants.devUrl}/scan/$registrationId',
            options: Options(headers: header),
          )
          .timeout(const Duration(seconds: NetworkConstants.timeout));

      if (response.statusCode == 200) {
        return UserResponse.fromJson(response.data["data"]);
      } else {
        throw ServerException(
          message: response.data['message'] ?? '',
          statusCode: response.statusCode ?? 0,
        );
      }
    } on DioException catch (e) {
      debugPrint("login DioException ${e.response?.data}");
      if (e.response?.statusCode == 404) {
        throw UserNotFoundException(
          message:
              e.response?.data["message"] ?? ErrorConst.USER_NOT_FOUND_ERROR,
          statusCode: 404,
        );
      }
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.connectionError) {
        throw const TimeOutException(
          message: ErrorConst.TIMEOUT_MESSAGE,
          statusCode: 0,
        );
      }
      if (e.response == null) {
        if (e.error.runtimeType == SocketException) {
          throw NoInternetException(
            message: ErrorConst.NO_INTERNET_MESSAGE,
            statusCode: e.response?.statusCode ?? 400,
          );
        }
      }
      String status = e.response?.data["message"] ?? ErrorConst.UNKNOWN_ERROR;
      throw ServerException(message: status, statusCode: 500);
    } on ServerException {
      rethrow;
    } on UserNotFoundException {
      rethrow;
    } on NoInternetException {
      rethrow;
    } on TimeOutException {
      rethrow;
    } on TimeoutException {
      throw throw const TimeOutException(
          message: ErrorConst.TIMEOUT_MESSAGE, statusCode: 20);
    }
    catch (e) {
      debugPrint("ERROR CATCH ${e.toString()}");

      throw const ServerException(
        message: ErrorConst.UNKNOWN_ERROR,
        statusCode: 500,
      );
    }
  }
}

abstract class QrScanRemoteDataSrc {
  const QrScanRemoteDataSrc();

  Future<UserResponse> scanQr({required String registrationId});
}
