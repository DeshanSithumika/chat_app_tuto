import 'package:animated_snack_bar/animated_snack_bar.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class AlertHelper {
  //---------funnction show alert dialog box
  static Future<dynamic> showAlert(
    BuildContext context,
    DialogType dialogType,
    String title,
    String desc,
  ) async {
    return AwesomeDialog(
      context: context,
      dialogType: dialogType,
      animType: AnimType.bottomSlide,
      title: title,
      desc: desc,
      btnCancelOnPress: () {},
      btnOkOnPress: () {},
    ).show();
  }

  //-----show snakbar function
  static void showSnackBar(
    String msg,
    AnimatedSnackBarType type,
    BuildContext context,
  ) {
    AnimatedSnackBar.material(msg,
            type: type, duration: const Duration(milliseconds: 500))
        .show(context);
  }
}
