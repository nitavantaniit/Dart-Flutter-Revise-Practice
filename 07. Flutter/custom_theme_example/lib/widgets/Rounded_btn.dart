import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String btnName;
  final Icon? icon;
  final Color? bgcolor;
  final TextStyle? textStyle;
  final VoidCallback? callback;

  const RoundedButton({super.key,  required this.btnName,
  this.icon,
  this.bgcolor = Colors.blue,
  this.textStyle,
  this.callback
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        callback!();
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: bgcolor,
        shadowColor: bgcolor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(21),
            bottomLeft: Radius.circular(21),
          )
        )
      ),
      child: icon!=null ? Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon!,
          Container(
            width: 11,
          ),
          Text(btnName, style: textStyle,)
        ],

      ) : Text(btnName, style: textStyle,),
    );
  }
}