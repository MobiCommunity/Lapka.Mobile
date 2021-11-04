import 'package:freezed_annotation/freezed_annotation.dart';

import 'network_exceptions.dart';

part 'result.freezed.dart';

@freezed
class Result<T, E> with _$Result<T, E> {
  const factory Result.success({T? data}) = Success<T, E>;

  const factory Result.failure({required E error}) = Failure<T, E>;
}
