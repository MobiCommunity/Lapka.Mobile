import 'package:flutter/material.dart';
import 'package:lapka/providers/adopt_pet/bloc/adopt_pet_list_bloc.dart';
import 'package:lapka/providers/base_pet_list_bloc/base_pet_list_bloc.dart';
import 'package:lapka/screens/filterable_pet_list.dart';
import 'package:lapka/screens/screen_wrapper.dart';

class AdoptPetListPage<T extends BasePetListBloc> extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
      withLocalization: true,
      children: [
        FilterablePetList<AdoptPetListBloc>(
          listType: ListType.petAdoption,
        )
      ],
    );
  }
}
