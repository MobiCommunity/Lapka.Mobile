part of 'like_pet_bloc.dart';

@freezed
class LikePetState with _$LikePetState {
  const factory LikePetState.liked() = _Liked;
  const factory LikePetState.disliked() = _Disliked;
  const factory LikePetState.fetching() = _Fetching;
  const factory LikePetState.unknown() = _Unknown;
  const factory LikePetState.error(String errorMessage) = _Error;
}
