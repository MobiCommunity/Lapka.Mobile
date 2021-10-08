part of 'global_loader_cubit.dart';

@freezed
class GlobalLoaderState with _$GlobalLoaderState {
  const factory GlobalLoaderState.busy() = Busy;
  const factory GlobalLoaderState.idle() = Idle;
}
