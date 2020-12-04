import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class BottomMaterialDialog extends StatelessWidget {
  BottomMaterialDialog({
    @required this.title,
    @required this.msg,
    @required this.btn1Text,
    @required this.btn2Text,
    @required this.btn1Press,
    @required this.btn2Press,
    this.animation,
    this.titleStyle,
    this.msgStyle,
    this.btnShape,
    this.singleBtn = false,
    this.btn1Bcg,
    this.btn2Bcg,
    this.btn1IconColor,
    this.btn2IconColor,
    this.btn1Icon,
    this.btn2Icon,
    this.color,
  });

  final String title, msg, btn1Text, btn2Text, animation;
  final Function() btn1Press, btn2Press;
  final bool singleBtn;
  final TextStyle titleStyle, msgStyle;
  final RoundedRectangleBorder btnShape;
  final Color btn1Bcg, btn2Bcg, btn1IconColor, btn2IconColor, color;
  final IconData btn1Icon, btn2Icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        animation != null
            ? Container(
                height: 200,
                padding: EdgeInsets.only(top: 16),
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
        Padding(
          padding: const EdgeInsets.only(
              right: 24, left: 24, top: 16.0, bottom: 24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _secondBtn(),
              _firstBtn(),
            ],
          ),
        )
      ],
    );
  }

  Widget _secondBtn() {
    return Visibility(
      visible: !singleBtn,
      child: Expanded(
        child: Container(
          margin: EdgeInsets.only(right: 8),
          child: OutlineButton(
            onPressed: btn2Press,
            shape: btnShape,
            color: btn2Bcg,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Visibility(
                  visible: btn2Icon != null,
                  child: Icon(
                    btn2Icon,
                    color: btn2IconColor,
                    size: 18,
                  ),
                ),
                Visibility(
                  visible: btn2Icon != null,
                  child: SizedBox(
                    width: 8,
                  ),
                ),
                Text(
                  btn2Text,
                  style: TextStyle(color: btn2IconColor),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _firstBtn() {
    return Expanded(
      child: Container(
        margin: singleBtn == true ? EdgeInsets.zero : EdgeInsets.only(left: 8),
        child: MaterialButton(
          shape: btnShape,
          onPressed: btn1Press,
          color: btn1Bcg,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Visibility(
                visible: btn1Icon != null,
                child: Icon(
                  btn1Icon,
                  color: btn1IconColor,
                  size: 18,
                ),
              ),
              Visibility(
                visible: btn1Icon != null,
                child: SizedBox(
                  width: 8,
                ),
              ),
              Text(
                btn1Text,
                style: TextStyle(color: btn1IconColor),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
