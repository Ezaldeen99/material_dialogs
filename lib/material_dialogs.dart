library material_dialogs;

import 'package:flutter/material.dart';
import 'package:material_dialogs/widgets/dialogs/dialog_widget.dart';

class Dialogs {
  ///[titleStyle] can be used to change the dialog title style
  static const TextStyle titleStyle =
      const TextStyle(fontWeight: FontWeight.bold, fontSize: 16);

  ///[bcgColor] background default value
  static const Color bcgColor = const Color(0xfffefefe);

  /// [dialogShape] dialog outer shape
  static const ShapeBorder dialogShape = const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(16)));

  /// [BottomSheetShape] bottom dialog outer shape
  static const ShapeBorder BottomSheetShape = RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16), topRight: Radius.circular(16)));

  /// Displays normal Material dialog above the current contents of the app
  /// [context] your parent widget context
  /// [color] dialog background color

  /// [title] your dialog title
  /// [titleStyle] your dialog title style
  /// [msg] your dialog description message
  /// [msgStyle] your dialog description style

  /// [actions]Widgets to display a row of buttons after the [msg] widget.

  static Future<void> materialDialog({
    @required BuildContext context,
    String title,
    String msg,
    List<Widget> actions,
    String animations,
    ShapeBorder dialogShape = dialogShape,
    TextStyle titleStyle = titleStyle,
    TextStyle msgStyle,
    Color color = bcgColor,
  }) async {
    assert(context != null);

    await showDialog<String>(
        context: context,
        builder: (_) {
          return Dialog(
              backgroundColor: color,
              shape: dialogShape,
              child: DialogWidget(
                title: title,
                msg: msg,
                actions: actions,
                animation: animations,
                titleStyle: titleStyle,
                msgStyle: msgStyle,
                color: color,
              ));
        });
  }

  /// Displays bottom sheet Material dialog above the current contents of the app
  static void bottomMaterialDialog({
    @required BuildContext context,
    String title,
    String msg,
    List<Widget> actions,
    String animations,
    ShapeBorder dialogShape = BottomSheetShape,
    TextStyle titleStyle = titleStyle,
    TextStyle msgStyle,
    Color color = bcgColor,
  }) {
    assert(context != null);

    showModalBottomSheet(
        context: context,
        shape: dialogShape,
        backgroundColor: color,
        builder: (context) => DialogWidget(
              title: title,
              msg: msg,
              actions: actions,
              animation: animations,
              titleStyle: titleStyle,
              msgStyle: msgStyle,
              color: color,
            ));
  }
}
