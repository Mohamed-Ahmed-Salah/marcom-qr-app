part of 'home_cubit.dart';
@freezed
sealed class HomeState with _$HomeState{
  const factory HomeState.initial() = InitialState;

  const factory HomeState.loading() = LoadingState;

  const factory HomeState.disconnected() = DisconnectedState;

  const factory HomeState.connected() = ConnectedState;
}

