import 'package:flutter/material.dart';
import 'package:lapka/components/basic/basic_text.dart';
import 'package:lapka/settings/colors.dart';

class LapkaSnackBar extends SnackBar {
  final Duration duration;
  final String message;
  final Color? backgroundColor;
  final String? actionName;
  final BuildContext? context;
  final Function? onPressed;

  LapkaSnackBar({
    Key? key,
    required this.message,
    this.backgroundColor = Colors.transparent,
    this.context,
    this.actionName,
    this.onPressed,
    this.duration = const Duration(seconds: 4),
  }) : super(
          key: key,
          duration: duration,
          backgroundColor: backgroundColor,
          elevation: 0,
          padding: EdgeInsets.zero,
          content: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(8)),
              child: Container(
                padding: EdgeInsets.all(16),
                color: BasicColors.white,
                child: BasicText.body14(message),
              ),
            ),
          ),
          action: onPressed != null
              ? SnackBarAction(
                  label: actionName != null ? actionName : 'Refresh',
                  onPressed: () {
                    onPressed();
                  },
                  textColor: BasicColors.white,
                )
              : null,
        );

  factory LapkaSnackBar.error(
          {required String message,
          Duration duration = const Duration(seconds: 4),
          BuildContext? context,
          String? actionName,
          Function? action}) =>
      LapkaSnackBar(
        message: message,
        backgroundColor: BasicColors.white,
        actionName: actionName,
        context: context,
        onPressed: action,
      );

  factory LapkaSnackBar.infinite(
          {required String message,
          Duration duration = const Duration(days: 365),
          BuildContext? context,
          String? actionName,
          Color? backgroundColor,
          Function? action}) =>
      LapkaSnackBar(
        message: message,
        backgroundColor: backgroundColor,
        duration: action != null ? const Duration(days: 365) : duration,
        actionName: actionName,
        context: context,
        onPressed: action,
      );
}
