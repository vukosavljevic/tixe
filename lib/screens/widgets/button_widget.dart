import 'package:flutter/material.dart';

class THTextButton extends StatelessWidget{
  final Color? backgroundColor;
  final Widget child;
  final Function() onTap;
  final Color? borderColor;
  const THTextButton({super.key,this.backgroundColor, required this.child, required this.onTap,this.borderColor});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.8,
      height: 40,
      child: TextButton(
        onPressed: onTap,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(backgroundColor), 
          alignment: Alignment.center,
          shape: MaterialStateProperty.all(RoundedRectangleBorder(
              side: BorderSide(
                color: borderColor ?? Colors.transparent, 
                width: 1,
              ),
              borderRadius: BorderRadius.circular(10.0)))
          ), 
        child: child,
        ),
    );
  }

}