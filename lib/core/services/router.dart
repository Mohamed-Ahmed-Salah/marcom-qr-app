import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:marcom_qr/src/home/presentation/view/home_view.dart';

/// For routes that should NOT have the bottom nav bar
final _rootNavigatorKey = GlobalKey<NavigatorState>();

final _scaffoldKey = GlobalKey<ScaffoldMessengerState>();

GlobalKey<ScaffoldMessengerState> get scaffoldKey => _scaffoldKey;

GlobalKey<NavigatorState> get rootNavigatorKey => _rootNavigatorKey;

final router = GoRouter(
  debugLogDiagnostics: true,
  navigatorKey: _rootNavigatorKey,
  initialLocation: HomeView.path,
  routes: [
    GoRoute(
      path: HomeView.path,
      name: HomeView.name,
      pageBuilder: (context, state) {
        return CustomTransitionPage(
          key: state.pageKey,
          child: const HomeView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0); // From right
            const end = Offset.zero;
            const curve = Curves.easeInOut;

            final tween = Tween(
              begin: begin,
              end: end,
            ).chain(CurveTween(curve: curve));
            final offsetAnimation = animation.drive(tween);

            return SlideTransition(position: offsetAnimation, child: child);
          },
        );
      },
    ),
  ],
);
