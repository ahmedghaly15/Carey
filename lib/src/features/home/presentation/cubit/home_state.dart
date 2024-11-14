import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.freezed.dart';

enum HomeStateStatus { initial }

@freezed
sealed class HomeState with _$HomeState {
  const factory HomeState({
    required HomeStateStatus status,
  }) = _HomeState;

  factory HomeState.initial() => const HomeState(
        status: HomeStateStatus.initial,
      );
}
