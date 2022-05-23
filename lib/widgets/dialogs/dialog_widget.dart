import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

/// Displays Material dialog above the current contents of the app

class DialogWidget extends StatelessWidget {
  DialogWidget({
    Key? key,
    this.title,
    this.msg,
    this.actions,
    this.animationBuilder,
    this.customView = const SizedBox(),
    this.titleStyle,
    this.msgStyle,
    this.titleAlign,
    this.msgAlign,
    this.dialogWidth,
    this.color,
  });

  /// [actions]Widgets to display a row of buttons after the [msg] widget.
  final List<Widget>? actions;

  /// [customView] a widget to display a custom widget instead of the animation view.
  final Widget customView;

  /// [title] your dialog title
  final String? title;

  /// [msg] your dialog description message
  final String? msg;

  /// [animationBuilder] lottie animations builder
  final LottieBuilder? animationBuilder;

  /// [titleStyle] dialog title text style
  final TextStyle? titleStyle;

  /// [animation] lottie animations path
  final TextStyle? msgStyle;

  /// [titleAlign] dialog title text alignment
  final TextAlign? titleAlign;

  /// [textAlign] dialog description text alignment
  final TextAlign? msgAlign;

  /// [color] dialog's backgorund color
  final Color? color;

  /// [dialogWidth] dialog's width compared to the screen width
  final double? dialogWidth;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: dialogWidth == null
          ? null
          : MediaQuery.of(context).size.width * dialogWidth!,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (animationBuilder != null)
            Container(
              padding: EdgeInsets.only(top: 20),
              height: 200,
              width: double.infinity,
              child: animationBuilder,
            ),
          customView,
          title != null
              ? Padding(
                  padding:
                      const EdgeInsets.only(right: 20, left: 20, top: 24.0),
                  child: Text(
                    title!,
                    style: titleStyle,
                    textAlign: titleAlign,
                  ),
                )
              : SizedBox(
                  height: 4,
                ),
          msg != null
              ? Padding(
                  padding:
                      const EdgeInsets.only(right: 20, left: 20, top: 16.0),
                  child: Text(
                    msg!,
                    style: msgStyle,
                    textAlign: msgAlign,
                  ),
                )
              : SizedBox(
                  height: 20,
                ),
          actions?.isNotEmpty == true
              ? buttons(context)
              : SizedBox(
                  height: 20,
                ),
        ],
      ),
    );
  }

  Widget buttons(BuildContext context) {
    return Padding(
      padding:
          const EdgeInsets.only(right: 20, left: 20, top: 16.0, bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(actions!.length, (index) {
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
              child: actions![index],
            ),
          );
        }),
      ),
    );
  }
}
