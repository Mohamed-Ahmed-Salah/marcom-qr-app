import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marcom_qr/core/utils/util_functions.dart';
import 'package:marcom_qr/src/home/presentation/app/scan_qr_cubit/scan_qr_cubit.dart';

import '../app/internet_cubit/home_cubit.dart';
import '../widgets/animated_loader.dart';
import '../widgets/home_body.dart';

class HomeView extends StatelessWidget {
  static String path = "/home";
  static String name = "/home";

  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home")),
      body: BlocListener<HomeCubit, HomeState>(
        listener: (_, state) {
          state.whenOrNull(
            disconnected: () {
              UtilFunctions.showSnackBar(
                context: context,
                message: "No Internet Connection",
              );
            },
          );
        },
        child: BlocListener<ScanQrCubit, ScanQrState>(
          listener: (BuildContext context, state) {
            state.whenOrNull(
              loading: () {
                showDialog(
                  barrierDismissible: false,
                  context: context,
                  builder: (context) => const AnimatedLoader(),
                );
              },
            );
          },
          child: HomeBody(),
        ),
      ),
    );
  }
}
