import 'package:lapka/models/pet.dart';

mixin PetMixin {
  void likeDislikePet(String petId, List<Pet> petList) {
    final petToLikeOrDislike =
        petList.firstWhere((element) => element.id == petId);
    final indexOfLikeDislikePet = petList.indexOf(petToLikeOrDislike);
    final petToInsert =
        petToLikeOrDislike.copyWith(isLiked: !petToLikeOrDislike.isLiked);

    petList.replaceRange(
        indexOfLikeDislikePet, indexOfLikeDislikePet + 1, [petToInsert]);
  }

  Pet like(Pet pet) {
    return pet.copyWith(isLiked: true);
  }

  Pet dislike(Pet pet) {
    return pet.copyWith(isLiked: false);
  }
}
