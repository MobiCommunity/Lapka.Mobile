import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lapka/components/app_bar/custom_app_bar.dart';
import 'package:lapka/components/basic/basic_button.dart';
import 'package:lapka/components/basic/basic_text.dart';
import 'package:lapka/components/basic/loading_indicator.dart';
import 'package:lapka/components/screens/myPets/myPetComp.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/providers/myPetsProvider.dart';
import 'package:lapka/providers/my_pets/bloc/my_pets_bloc.dart';
import 'package:lapka/screens/my_pets/edit_my_pet.dart';
import 'package:lapka/settings/colors.dart';
import 'package:provider/provider.dart';

class MyPetsPage extends StatelessWidget {
  Widget _smallLineSpacer() {
    return Container(
      height: 1,
      color: BasicColors.grey,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          title: 'Moje zwierzaki',
          fade: true,
        ),
        body: Stack(
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
                BlocBuilder<MyPetsBloc, MyPetsState>(
                  builder: (context, state) {
                    return state.when(initial: () =>_initial(context) , 
                    loading: _loading , 
                    loaded: (list) => _body(context, list), 
                    error: (message) => _error(message) 
                    );
                  },
                ),
                
              ],
            ),
            Container(
              alignment: Alignment.bottomCenter,
              padding: EdgeInsets.all(20),
              child: BasicButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> EditMyPetPage(
                  creation: true,
                  //pet: Pet(name: 'name', race: 'race1', color: 'Color1', weight: 12.6, species: 1 ,sex: true, birthDay: DateTime.now(),sterilization: true),
                )));
              }, text: 'DODAJ ZWIERZAKA',))
          ],
        ));
  }

  Widget _initial(BuildContext context) {
    final bloc = BlocProvider.of<MyPetsBloc>(context);
    bloc.add(MyPetsEvent.getMyPets());
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

  Widget _body(BuildContext context, List<Pet> pets) {
        return SliverList(
          delegate: SliverChildBuilderDelegate((context, index) {
            Pet pet = pets[index];
            return Container(
              color: BasicColors.lightGrey,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 16, left: 20, right: 20),
                child: Column(
                  children: [
                    MyPetComp(pet: pet),
                    pets.length - 1 != index
                        ? Padding(
                            padding: const EdgeInsets.only(left: 76, top: 24),
                            child: _smallLineSpacer(),
                          )
                        : Container(height: 100,),
                  ],
                ),
              ),
            );
          }, childCount: pets.length),
        );
      
  }
}
