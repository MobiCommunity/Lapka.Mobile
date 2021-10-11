import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_portal/flutter_portal.dart';
import 'package:lapka/components/basic/loading_indicator.dart';
import 'package:lapka/injector.dart';
import 'package:lapka/providers/global_loader/global_loader_cubit.dart';
import 'package:lapka/settings/colors.dart';
import 'package:provider/provider.dart';

class AppContainer extends StatelessWidget {
  final Widget? child;

  AppContainer({
    Key? key,
    this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GlobalLoaderCubit, GlobalLoaderState>(
      builder: (context, state) {
        return PortalEntry(
          visible: state == GlobalLoaderState.busy(),
          portal: Container(
            color: BasicColors.white.withOpacity(0.4),
            child: LoadingIndicator(),
          ),
          child: Container(
            child: child,
          ),
        );
      },
    );
  }
}
