import 'package:flutter/material.dart';

// ignore: must_be_immutable
class THTextField extends StatelessWidget{
  String labelText;
  TextEditingController textInputController;

  THTextField({super.key,required this.labelText, required this.textInputController});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right:16.0, left:16.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 400),
        child: TextField(
            controller:textInputController,
            style:const TextStyle(color: Colors.white),
           decoration: InputDecoration(
           labelText: labelText,
           labelStyle: const TextStyle(color: Colors.white),
           enabledBorder: const OutlineInputBorder(  
          borderSide: BorderSide(width: 1, color: Colors.white), 
        ),
        focusedBorder: const OutlineInputBorder(  
          borderSide: BorderSide(width: 1, color: Colors.white), 
        ),
        ),
        ),
      ),
    );
  }

}