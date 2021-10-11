import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'global_loader_cubit.freezed.dart';
part 'global_loader_state.dart';

@lazySingleton
class GlobalLoaderCubit extends Cubit<GlobalLoaderState> {
  GlobalLoaderCubit() : super(GlobalLoaderState.idle());

  void setBusy() {
    emit(GlobalLoaderState.busy());
  }

  void setIdle() {
    emit(GlobalLoaderState.idle());
  }
}
