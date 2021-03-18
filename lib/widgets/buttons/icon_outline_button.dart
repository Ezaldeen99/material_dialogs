import 'package:flutter/material.dart';

class IconsOutlineButton extends StatelessWidget {
  IconsOutlineButton({
    required this.onPressed,
    required this.text,
    this.shape,
    this.color,
    this.iconData,
    this.padding = const EdgeInsets.all(4),
    this.iconColor,
    this.textStyle,
  });

  /// [onPressed] Defines the button's click callback
  final Function onPressed;

  /// [shape] Defines the button's shape
  final OutlinedBorder? shape;

  /// [color] Defines the button's background color
  final Color? color;

  /// [iconData] Defines the button's icon
  final IconData? iconData;

  /// [iconColor] Defines the button's icon color
  final Color? iconColor;

  /// [text] Defines the button's text
  final String text;

  /// [textStyle] Defines the button's base text style
  final TextStyle? textStyle;

  /// [padding] Defines the button's padding
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed as void Function()?,
      style: OutlinedButton.styleFrom(
          shape: shape, padding: padding, backgroundColor: color),
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
