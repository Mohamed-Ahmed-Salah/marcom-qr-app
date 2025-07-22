import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'home_state.dart';
part 'home_cubit.freezed.dart';


class HomeCubit extends Cubit<HomeState> {
  final Connectivity _connectivity = Connectivity();
  final InternetConnectionChecker _internetChecker = InternetConnectionChecker.createInstance();

  HomeCubit() : super(HomeState.initial()) {
    _initConnectivity();
    _connectivity.onConnectivityChanged.listen((List<ConnectivityResult> results) {
      _updateConnectionStatusFromResults(results);
    });
  }

  Future<void> _initConnectivity() async {
    debugPrint("loading _initConnectivity");
    emit(HomeState.loading());
    final results = await _connectivity.checkConnectivity();
    await _updateConnectionStatusFromResults(results);
  }

  Future<void> _updateConnectionStatusFromResults(List<ConnectivityResult> results) async {
    HomeState newState;
    if (results.contains(ConnectivityResult.none)) {
      debugPrint("none");
      newState = const HomeState.disconnected();
    } else {
      final hasInternet = await _internetChecker.hasConnection;
      if (hasInternet) {
        debugPrint("hasInternet");
        newState = const HomeState.connected();
      } else {
        debugPrint("doesnt hasInternet");
        newState = const HomeState.disconnected();
      }
    }

    // Only emit if state is different
    if (state != newState) {
      emit(newState);
    }
  }
}
