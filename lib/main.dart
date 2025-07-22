import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'core/res/theme/app_theme.dart';
import 'core/services/injection_container.dart';
import 'core/services/router.dart';
import 'src/home/presentation/app/internet_cubit/home_cubit.dart';
import 'src/home/presentation/app/permissions_cubit/permission_cubit.dart';
import 'src/home/presentation/app/scan_qr_cubit/scan_qr_cubit.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  await init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, screenType) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<HomeCubit>(
              create: (BuildContext context) => HomeCubit(),
            ),
            BlocProvider<ScanQrCubit>(
              create: (BuildContext context) =>
                  ScanQrCubit(qrScanUsecase: sl()),
            ),
            BlocProvider<PermissionsCubit>(
              create: (BuildContext context) => PermissionsCubit(),
            ),
          ],
          child: MaterialApp.router(
            routerConfig: router,
            title: 'Marcom Arabia',
            scaffoldMessengerKey: scaffoldKey,
            debugShowCheckedModeBanner: false,
            theme: CustomTheme.lightTheme(),
          ),
        );
      },
    );
  }
}
