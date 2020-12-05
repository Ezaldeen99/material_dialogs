import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

/// Displays Material dialog above the current contents of the app

class DialogWidget extends StatelessWidget {
  DialogWidget({
    @required this.title,
    @required this.msg,
    this.actions,
    this.animation,
    this.titleStyle,
    this.msgStyle,
    this.color,
  });

  /// [actions]Widgets to display a row of buttons after the [msg] widget.
  final List<Widget> actions;

  /// [title] your dialog title
  final String title;

  /// [msg] your dialog description message
  final String msg;

  /// [animation] lottie animations path
  final String animation;

  /// [titleStyle] dialog title text style
  final TextStyle titleStyle;

  /// [animation] lottie animations path
  final TextStyle msgStyle;

  /// [color] dialog's backgorund color
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        animation != null
            ? Container(
                padding: EdgeInsets.only(top: 16),
                height: 200,
                width: double.infinity,
                child: Lottie.asset(animation, fit: BoxFit.contain))
            : SizedBox(
                height: 0,
              ),
        Padding(
          padding: const EdgeInsets.only(right: 24, left: 24, top: 24.0),
          child: Text(
            title,
            style: titleStyle,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24, left: 24, top: 16.0),
          child: Text(
            msg,
            style: msgStyle,
          ),
        ),
        actions != null && actions.isNotEmpty
            ? buttons()
            : SizedBox(
                height: 24,
              )
      ],
    );
  }

  Widget buttons() {
    return Padding(
      padding:
          const EdgeInsets.only(right: 24, left: 24, top: 16.0, bottom: 24.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(actions.length, (index) {
          double endPadding = index != 0 ? 8 : 0;
          return Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: endPadding),
              child: actions[index],
            ),
          );
        }),
      ),
    );
  }
}
