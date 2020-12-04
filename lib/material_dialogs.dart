library material_dialogs;

import 'package:flutter/material.dart';
import 'package:material_dialogs/widgets/bottom_material_dialog.dart';
import 'package:material_dialogs/widgets/normal_dialog.dart';

class Dialogs {
  ///[titleStyle] can be used to change the dialog title style
  static const TextStyle titleStyle =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 16);

  ///[white] main button default content color
  static const Color white = Colors.white;

  ///[red] accent default value
  static const Color red = Colors.red;

  ///[grey] main text default value
  static const Color grey = Colors.grey;

  ///[bcgColor] background default value
  static const Color bcgColor = const Color(0xfffefefe);

  ///[RoundedRectangleBorder] buttons shape
  static const RoundedRectangleBorder btnShape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4)));

  /// Displays normal Material dialog above the current contents of the app
  ///
  /// [context] your parent widget context
  /// [color] dialog background color
  /// [singleBtn] true if you want dialog to have one button only
  /// by default [singleBtn] is false and it will show two buttons
  ///
  ///
  /// [title] your dialog title
  /// [titleStyle] your dialog title style
  /// [msg] your dialog description message
  /// [msgStyle] your dialog description style
  ///
  /// [btnShape] buttons shape
  ///
  /// [btn1Text] ok button text
  /// [btn1Press] ok button callback
  /// [btn1Bcg] ok button background color
  /// [btn1Icon] ok button icon
  /// [btn1IconColor] ok button icon color
  ///
  /// [btn2Text] cancel button text
  /// [btn2Press] cancel button callback
  /// [btn2Bcg] cancel button background color
  /// [btn2Icon] cancel button icon
  /// [btn2IconColor] cancel button icon color
  ///
  static const ShapeBorder dialogShape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)));

  static Future<void> materialDialog({
    @required BuildContext context,
    @required String title,
    @required String msg,
    @required String btn1Text,
    @required String btn2Text,
    @required Function btn1Press,
    @required Function btn2Press,
    String animations,
    ShapeBorder dialogShape = dialogShape,
    TextStyle titleStyle = titleStyle,
    TextStyle msgStyle,
    RoundedRectangleBorder btnShape = btnShape,
    bool singleBtn = false,
    Color btn1Bcg = red,
    Color btn2Bcg = white,
    Color btn1IconColor = white,
    Color btn2IconColor = grey,
    IconData btn1Icon,
    IconData btn2Icon,
    Color color = bcgColor,
  }) async {
    assert(context != null);
    assert(singleBtn != null);
    assert(title != null);
    assert(msg != null);
    assert(btn1Text != null);
    assert(btn2Text != null);
    assert(btn1Press != null);
    assert(btn2Press != null);
    assert(btnShape != null);

    await showDialog<String>(
        context: context,
        builder: (_) => MaterialDialogWidget(
              title: title,
              msg: msg,
              btn1Text: btn1Text,
              btn2Text: btn2Text,
              btn1Press: btn1Press,
              btn2Press: btn2Press,
              animation: animations,
              shape: dialogShape,
              titleStyle: titleStyle,
              msgStyle: msgStyle,
              singleBtn: singleBtn,
              btn1Bcg: btn1Bcg,
              btn2Bcg: btn2Bcg,
              btn1IconColor: btn1IconColor,
              btn2IconColor: btn2IconColor,
              btn1Icon: btn1Icon,
              btn2Icon: btn2Icon,
              color: color,
            ));
  }

  /// Displays bottom sheet Material dialog above the current contents of the app
  ///
  /// [context] your parent widget context
  /// [color] dialog background color
  /// [singleBtn] true if you want dialog to have one button only
  /// by default [singleBtn] is false and it will show two buttons
  ///
  ///
  /// [title] your dialog title
  /// [titleStyle] your dialog title style
  /// [msg] your dialog description message
  /// [msgStyle] your dialog description style
  ///
  /// [btnShape] buttons shape
  ///
  /// [btn1Text] ok button text
  /// [btn1Press] ok button callback
  /// [btn1Bcg] ok button background color
  /// [btn1Icon] ok button icon
  /// [btn1IconColor] ok button icon color
  ///
  /// [btn2Text] cancel button text
  /// [btn2Press] cancel button callback
  /// [btn2Bcg] cancel button background color
  /// [btn2Icon] cancel button icon
  /// [btn2IconColor] cancel button icon color
  ///

  static const ShapeBorder BottomSheetShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16), topRight: Radius.circular(16)));

  static void bottomMaterialDialog({
    @required BuildContext context,
    @required String title,
    @required String msg,
    @required String btn1Text,
    @required String btn2Text,
    @required Function btn1Press,
    @required Function btn2Press,
    String animations,
    ShapeBorder dialogShape = BottomSheetShape,
    TextStyle titleStyle = titleStyle,
    TextStyle msgStyle,
    RoundedRectangleBorder btnShape = btnShape,
    bool singleBtn = false,
    Color btn1Bcg = red,
    Color btn2Bcg = white,
    Color btn1IconColor = white,
    Color btn2IconColor = grey,
    IconData btn1Icon,
    IconData btn2Icon,
    Color color = bcgColor,
  }) {
    assert(context != null);
    assert(singleBtn != null);
    assert(title != null);
    assert(msg != null);
    assert(btn1Text != null);
    assert(btn2Text != null);
    assert(btn1Press != null);
    assert(btn2Press != null);
    assert(btnShape != null);

    showModalBottomSheet(
        context: context,
        shape: dialogShape,
        backgroundColor: color,
        builder: (context) => BottomMaterialDialog(
              title: title,
              msg: msg,
              btn1Text: btn1Text,
              btn2Text: btn2Text,
              btn1Press: btn1Press,
              btn2Press: btn2Press,
              animation: animations,
              titleStyle: titleStyle,
              msgStyle: msgStyle,
              singleBtn: singleBtn,
              btn1Bcg: btn1Bcg,
              btn2Bcg: btn2Bcg,
              btn1IconColor: btn1IconColor,
              btn2IconColor: btn2IconColor,
              btn1Icon: btn1Icon,
              btn2Icon: btn2Icon,
              color: color,
            ));
  }
}
