part of 'like_pet_bloc.dart';

@freezed
class LikePetEvent with _$LikePetEvent {
  const factory LikePetEvent.like(String id) = _Like;
  const factory LikePetEvent.dislike(String id) = _Dislike;
}
