import 'package:flutter/material.dart';
import 'package:lapka/providers/liked_pets/bloc/liked_pets_bloc.dart';
import 'package:lapka/screens/filterable_pet_list.dart';
import 'package:lapka/screens/screen_wrapper.dart';

class LikedPetsPage extends StatelessWidget {
  const LikedPetsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
      title: 'Ulubione zwierzaki',
      children: [FilterablePetList<LikedPetsBloc>(listType: ListType.likedPets,)],
    );
  }
}
