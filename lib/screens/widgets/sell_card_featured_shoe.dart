

import 'package:flutter/material.dart';
import 'package:tixehr/constants/colors.dart';

class THSellCardFeaturedShoe extends StatelessWidget{
  final Color? backgroundColor;
  final String shoeName;
  final String colorOfShoe;
  final String priceOfShoe;
  final String? backgroundImage;

  const THSellCardFeaturedShoe(
      {super.key,
        this.backgroundColor,
        required this.shoeName,
        required this.colorOfShoe,
        required this.priceOfShoe,
        this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
          height: 200,
          decoration: BoxDecoration(
            color: THColors.greyColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment:MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.asset(backgroundImage ?? '', fit: BoxFit.fitWidth,),
                const SizedBox(height: 10,),
                 Text(shoeName, textAlign: TextAlign.left, style: const TextStyle(color: Colors.black)),
                 Text(colorOfShoe, style: const TextStyle(color: Colors.black)),
                 Text("$priceOfShoe €", style:const TextStyle(fontSize: 18, color: Colors.black)),

              ],
            ),
          )),
    );
  }

}