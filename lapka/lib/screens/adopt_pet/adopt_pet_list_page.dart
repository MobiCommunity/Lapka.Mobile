import 'package:flutter/material.dart';
import 'package:lapka/providers/adopt_pet/bloc/adopt_pet_list_bloc.dart';
import 'package:lapka/providers/base_pet_list_bloc/base_pet_list_bloc.dart';
import 'package:lapka/screens/filterable_pet_list.dart';
import 'package:lapka/screens/screen_wrapper.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class AdoptPetListPage<T extends BasePetListBloc> extends StatelessWidget {
  TextEditingController _filterController = TextEditingController();
  PanelController _panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    return ScreenWrapper(
      withLocalization: true,
      children: [FilterablePetList<AdoptPetListBloc>()],
    );
  }
}
