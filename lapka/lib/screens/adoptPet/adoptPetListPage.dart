import 'package:flutter/material.dart';
import 'package:lapka/components/appBar/customAppBar.dart';
import 'package:lapka/components/screens/petCard.dart';
import 'package:lapka/models/pet.dart';
import 'package:lapka/screens/adoptPet/adoptPetDetails.dart';
import 'package:lapka/settings/colors.dart';

class AdoptPetListPage extends StatelessWidget {
  const AdoptPetListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: CustomAppBar(
          transparent: true,
          title: "Example",
        ),
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                floating: true,
                backgroundColor: Colors.transparent,
                flexibleSpace: Padding(
                  padding: const EdgeInsets.only(top: 100),
                  child: Container(
                    decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(33),
                                topRight: Radius.circular(33)),
                          ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top:33.0),
                          child: Container(height: 100,color: Colors.red,),
                        ),
                        Container(height: 100,color: Colors.blue,)
                      ],
                    ),
                  ),
                ),
                // flexibleSpace: Container(
                //   child: Padding(
                //     padding: const EdgeInsets.only(top: 100),
                //     child: Container(
                //       decoration: BoxDecoration(
                //         color: Colors.grey,
                //         borderRadius: BorderRadius.only(
                //             topLeft: Radius.circular(33),
                //             topRight: Radius.circular(33)),
                //       ),
                //     ),
                //   ),
                // ),
              ),
            ];
          },
          body: Container(
            color: Colors.grey,
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 500,
                    color: Colors.red,
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AdoptPetDetails()),
            );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 500,
                      color: Colors.red,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 500,
                    color: Colors.red,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 500,
                    color: Colors.red,
                  ),
                ),
                Container(
                  alignment: Alignment.bottomCenter,
                  height: 33,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(33),
                        topRight: Radius.circular(33)),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}

// class AdoptPetListPage extends StatelessWidget {
//   const AdoptPetListPage({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         backgroundColor: BasicColors.white,
//         //appBar: ,
//         body: CustomScrollView(
//           slivers: [
//             SliverAppBar(
//               pinned: true,
//               flexibleSpace: CustomAppBar(
//                 title: "Example",
//               ),
//             ),
//             SliverToBoxAdapter(
//                 child: Container(
//               color: Colors.grey,
//               child: SliverList(
//                   delegate: SliverChildListDelegate([
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     height: 200,
//                     color: Colors.red,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     height: 200,
//                     color: Colors.red,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     height: 200,
//                     color: Colors.red,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     height: 200,
//                     color: Colors.red,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     height: 200,
//                     color: Colors.red,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     height: 200,
//                     color: Colors.red,
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Container(
//                     height: 200,
//                     color: Colors.red,
//                   ),
//                 ),
//               ])),
//             )
//                 // Container(
//                 //   height: 33,
//                 //   decoration: BoxDecoration(
//                 //     color: BasicColors.grey,
//                 //     borderRadius: BorderRadius.only(topLeft: Radius.circular(33), topRight: Radius.circular(33)),
//                 //   ),),
//                 )
//           ],
//         ));
//   }
// }
