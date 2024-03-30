import 'package:flutter/material.dart';
import 'package:tixehr/constants/images.dart';

class THNavigation extends StatelessWidget{
  const THNavigation({super.key});

  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(THImages.lightLogo, height: 32, width: 32, color: Colors.red,),
          Expanded(
            child: Container(
              margin: const EdgeInsets.only(right: 12,left: 12),
              decoration:  BoxDecoration(
                      border: Border.all(),
                    ),
              child:const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text("Search"),
              )
            ),
          ),
          const Icon(Icons.notifications, weight: 32,)
        ],
      ),
    );
  }
}