import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_user_data.freezed.dart';
part 'new_user_data.g.dart';

@freezed
class NewUserData with _$NewUserData {
  const factory NewUserData(
      {required String username,
      required String firstName,
      required String lastName,
      required String email,
      required String password}) = _NewUserData;

  factory NewUserData.fromJson(Map<String, dynamic> json) =>
      _$NewUserDataFromJson(json);

  // Map<String, dynamic> toJson() => _$NewUserDataToJson(this);
}
