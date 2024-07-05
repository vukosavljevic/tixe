import 'package:flutter/material.dart';
import 'package:tixehr/constants/images.dart';
import 'package:tixehr/enums/sell_card_type.dart';

class THSellCardWidget extends StatelessWidget {
  final THSellCardType type;
  final Color? backgroundColor;
  final String? backgroundImage;

  const THSellCardWidget(
      {super.key,
      required this.type,
      this.backgroundColor,
      this.backgroundImage});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){},
      child: Container(
          decoration: BoxDecoration(
            color: backgroundColor ?? Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: Stack(
              alignment:
                  Alignment.center,
              children: [
                Image.asset(backgroundImage ?? '', fit: BoxFit.cover),
              ],
            ),
          )),
    );
  }
}
