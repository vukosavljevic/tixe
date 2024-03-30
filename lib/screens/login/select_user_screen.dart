import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:tixehr/constants/colors.dart';
import 'package:tixehr/constants/images.dart';
import 'package:tixehr/screens/widgets/button_widget.dart';

class THSelectUser extends StatelessWidget{
  const THSelectUser({super.key});

    @override
    Widget build(BuildContext context){
      return Container(
        color:THColors.darkColor,
        child: Column(
            children: [
              Expanded(child: Image.asset(THImages.mainImage, width: MediaQuery.of(context).size.width)),
              ConstrainedBox(
                    constraints: const BoxConstraints(maxWidth: 550),
                child: THTextButton(
                  onTap: () => context.push('/login'), 
                  backgroundColor: THColors.redColor,
                  child: const Text("Prijavi se", style: TextStyle(color: THColors.darkColor, fontWeight: FontWeight.w700),
                  )),
              ),
               Padding(
                 padding: const EdgeInsets.symmetric(vertical:20),
                 child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 550),
                   child: THTextButton(
                     onTap: () => context.push('/register'), 
                     backgroundColor: const Color.fromARGB(0, 0, 0, 0),
                     borderColor: THColors.whiteColor,
                     child: const Text("Novi kupac", style: TextStyle(color: THColors.whiteColor, fontWeight: FontWeight.w700))),
                 ),
               )
            ]
            ),
      );
      }
}