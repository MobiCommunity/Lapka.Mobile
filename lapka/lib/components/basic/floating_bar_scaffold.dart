import 'package:flutter/material.dart';
import 'package:lapka/settings/colors.dart';

class FloatingBarScaffold extends StatelessWidget {
  final PreferredSizeWidget appbar;
  final Widget headerSliver;
  final Widget body;

  const FloatingBarScaffold(
      {Key? key,
      required this.appbar,
      required this.headerSliver,
      required this.body})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: appbar,
        body: NestedScrollView(
          floatHeaderSlivers: true,
          headerSliverBuilder: (context, innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                  floating: true,
                  toolbarHeight: 236,
                  backgroundColor: Colors.transparent,
                  flexibleSpace: headerSliver),
            ];
          },
          body: Stack(
            children: [
              Container(color: BasicColors.lightGrey, child: body),
              Container(
                height: 20,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      BasicColors.lightGrey,
                      BasicColors.white.withOpacity(0)
                    ])),
              ),
            ],
          ),
        ));
  }
}
