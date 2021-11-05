import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lapka/components/basic/basic_button.dart';
import 'package:lapka/components/basic/basic_text.dart';
import 'package:lapka/components/basic/image_button.dart';
import 'package:lapka/components/basic/loading_indicator.dart';
import 'package:lapka/components/screens/adopt_pet/input_filter.dart';
import 'package:lapka/components/screens/adopt_pet/pet_card.dart';
import 'package:lapka/components/screens/adopt_pet/species_selector.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/providers/adopt_pet/bloc/adopt_pet_list_bloc.dart';
import 'package:lapka/providers/base_pet_list_bloc/base_pet_list_bloc.dart';
import 'package:lapka/settings/colors.dart';
import 'package:provider/provider.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

enum ListType { pet_adoption, liked_pets, missing_pets }

class FilterablePetList<T extends BasePetListBloc> extends StatelessWidget {
   TextEditingController _filterController = TextEditingController();
  PanelController _panelController = PanelController();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(top: 133),
          color: BasicColors.lightGrey,
        ),
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Container(
                  height: 33,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(33),
                          topLeft: Radius.circular(33)),
                      color: BasicColors.lightGrey),
                ),
              ),
            ),
            BlocBuilder<T, BasePetListBlocState>(builder: (context, state) {
              return state.listState.when(
                  initial: () => _initial(context),
                  loading: _loading,
                  loaded: _buildList,
                  error: _error);
            }),
          ],
        ),
        Container(
          alignment: Alignment.bottomLeft,
          padding: EdgeInsets.all(20),
          child: Container(
            child: Container(
              width: 45,
              height: 45,
              child: ImageButton(
                onPressed: () {
                  _panelController.open();
                },
                shadow: true,
                trailling: Icon(Icons.tune, color: BasicColors.white),
              ),
            ),
          ),
        ),
        SlidingUpPanel(
          color: BasicColors.lightGrey,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(33), topRight: Radius.circular(33)),
          controller: _panelController,
          backdropEnabled: false,
          minHeight: 0,
          maxHeight: 330,
          panel: _filters(context),
        )
      ],
    );
  }

  _onSearch(BuildContext context) {
    final bloc = context.read<AdoptPetListBloc>();
    FocusScope.of(context).unfocus();
    _panelController.close();
    bloc.add(
      BasePetListBlocEvent.getPets(
        filters: bloc.state.filters.copyWith(petName: _filterController.text),
      ),
    );
  }

  Widget _filters(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(33), topRight: Radius.circular(33)),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 15),
                  child: Container(
                    width: 50,
                    height: 4,
                    decoration: BoxDecoration(
                        color: BasicColors.grey,
                        borderRadius: BorderRadius.all(Radius.circular(1))),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(bottom: 32, left: 20, right: 20),
                  child: InputFliter(
                    controller: _filterController,
                  ),
                ),
                BlocBuilder<T, BasePetListBlocState>(
                  builder: (context, state) => SpeciesSelector(
                    onChange: (specie) => context.read<AdoptPetListBloc>().add(
                          BasePetListBlocEvent.updateFilters(
                            state.filters.copyWith(race: specie),
                          ),
                        ),
                    selected: state.filters.race,
                  ),
                ),
                Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                    child: BasicButton(
                        text: 'Zastosuj filtry',
                        onPressed: () {
                          _onSearch(context);
                        })),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _initial(BuildContext context) {
    final bloc = BlocProvider.of<T>(context);
    bloc.add(BasePetListBlocEvent.getPets());
    return SliverToBoxAdapter(child: Container());
  }

  Widget _loading() {
    return SliverToBoxAdapter(child: LoadingIndicator());
  }

  Widget _error(String msg) {
    return SliverToBoxAdapter(
        child: Center(
      child: BasicText.body14(msg),
    ));
  }

  Widget _buildList(List<Pet> pets) {
    return SliverList(
        delegate: SliverChildBuilderDelegate((context, i) {
      return Container(
        color: BasicColors.lightGrey,
        child: Padding(
          padding: EdgeInsets.only(
              bottom: i == pets.length - 1 ? 80 : 16, left: 20, right: 20),
          child: PetCard(
            pet: pets[i],
          ),
        ),
      );
    }, childCount: pets.length));
  }
}
