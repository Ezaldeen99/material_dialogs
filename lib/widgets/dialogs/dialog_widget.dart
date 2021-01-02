import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

/// Displays Material dialog above the current contents of the app

class DialogWidget extends StatelessWidget {
  DialogWidget({
    this.title,
    this.msg,
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
                padding: EdgeInsets.only(top: 20),
                height: 200,
                width: double.infinity,
                child: Lottie.asset(animation, fit: BoxFit.contain))
            : SizedBox(
                height: 0,
              ),
        title != null
            ? Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 24.0),
                child: Text(
                  title,
                  style: titleStyle,
                ),
              )
            : SizedBox(
                height: 20,
              ),
        msg != null
            ? Padding(
                padding: const EdgeInsets.only(right: 20, left: 20, top: 16.0),
                child: Text(
                  msg,
                  style: msgStyle,
                ),
              )
            : SizedBox(
                height: 20,
              ),
        actions != null && actions.isNotEmpty
            ? buttons(context)
            : SizedBox(
                height: 20,
              )
      ],
    );
  }

  Widget buttons(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: 20, left: 20, top: 16.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(actions.length, (index) {
          final TextDirection direction = Directionality.of(context);
          double padding = index != 0 ? 8 : 0;
          double rightPadding = 0;
          double leftPadding = 0;
          direction == TextDirection.rtl
              ? rightPadding = padding
              : leftPadding = padding;
          return Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: leftPadding, right: rightPadding),
              child: actions[index],
            ),
          );
        }),
      ),
    );
  }
}
