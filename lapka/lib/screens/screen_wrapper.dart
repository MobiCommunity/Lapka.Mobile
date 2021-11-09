import 'package:flutter/material.dart';
import 'package:lapka/components/app_bar/custom_app_bar.dart';
import 'package:lapka/providers/location/bloc/location_bloc.dart';
import 'package:lapka/settings/colors.dart';
import 'package:lapka/utils/location_helper.dart';
import 'package:provider/src/provider.dart';

class ScreenWrapper extends StatelessWidget {
  final String title;
  final bool withLocalization;
  final List<Widget> children;

  const ScreenWrapper({
    Key? key,
    this.title = '',
    required this.children,
    this.withLocalization = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: CustomAppBar(
        fade: true,
        localization: withLocalization
            ? LocationHelper.getCityName(_locationListener(context))
            : '',
        showLocalization: withLocalization,
        title: title ,
      ),
      body: Stack(
        children: [
          Container(
            margin: EdgeInsets.only(top: 133),
            color: BasicColors.lightGrey,
          ),
          ...children,
        ],
      ),
    );
  }

  _locationListener(BuildContext context) {
    return context.watch<LocationBloc>().state;
  }
}
