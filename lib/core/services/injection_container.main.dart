part of 'injection_container.dart';

final sl = GetIt.instance;

Future<void> init() async {
  ///here we inject services and initialise our app...
  Future.wait([qrScanInit()]);
}

Future<void> qrScanInit() async {
  sl
    ..registerLazySingleton(() => QrScanUsecases(sl()))
    ..registerLazySingleton<QrScanRep>(() => QrScanRepImpl(sl()))
    ..registerLazySingleton<QrScanRemoteDataSrc>(
      () => QrScanRemoteDataSrcImpl(sl()),
    )
    ..registerSingleton(Dio());
}
