import 'package:flutter/material.dart';

///[btnShape] buttons shape
const RoundedRectangleBorder btnShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(4)));

class IconsButton extends StatelessWidget {
  IconsButton({
    @required this.onPressed,
    @required this.text,
    this.shape = btnShape,
    this.color,
    this.iconData,
    this.iconColor,
    this.textStyle,
  })  : assert(onPressed != null),
        assert(text != null);

  /// [onPressed] Defines the button's click callback
  final Function() onPressed;

  /// [shape] Defines the button's shape
  final ShapeBorder shape;

  /// [color] Defines the button's background color
  final Color color;

  /// [iconData] Defines the button's icon
  final IconData iconData;

  /// [iconColor] Defines the button's icon color
  final Color iconColor;

  /// [text] Defines the button's text
  final String text;

  /// [textStyle] Defines the button's base text style
  final TextStyle textStyle;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      shape: shape,
      color: color,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Visibility(
            visible: iconData != null,
            child: Icon(
              iconData,
              color: iconColor,
              size: 18,
            ),
          ),
          Visibility(
            visible: iconData != null,
            child: SizedBox(
              width: 4,
            ),
          ),
          Text(
            text,
            style: textStyle,
          ),
        ],
      ),
    );
  }
}
