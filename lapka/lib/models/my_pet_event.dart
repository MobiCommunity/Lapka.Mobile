import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

part 'my_pet_event.freezed.dart';
part 'my_pet_event.g.dart';

@freezed
abstract class MyPetEvent with _$MyPetEvent {
  const factory MyPetEvent({
    @Default('') String description, required DateTime date
  }) = _MyPetEvent;
  factory MyPetEvent.fromJson(Map<String, dynamic> json) =>
      _$MyPetEventFromJson(json);
}
