import 'package:bloc/bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'permission_cubit.freezed.dart';
part 'permission_state.dart';

class PermissionsCubit extends Cubit<PermissionState> {
  PermissionsCubit() : super(PermissionState.initial());
  Future<void> checkCameraPermission() async {
    final status = await Permission.camera.status;
    _handlePermissionStatus(status);
  }

  Future<void> requestCameraPermission() async {
    emit(PermissionState.initial());

    final status = await Permission.camera.request();
    _handlePermissionStatus(status);
  }

  void _handlePermissionStatus(PermissionStatus status) {
    switch (status) {
      case PermissionStatus.granted:
        emit(PermissionState.granted());
        break;
      case PermissionStatus.denied:
        emit(PermissionState.denied());
        break;
      case PermissionStatus.permanentlyDenied:
        emit(PermissionState.permanatelyDenied());
        break;
      default:
        emit(PermissionState.denied());
    }
  }

  void openAppSettings() {
    openAppSettings();
  }
}
