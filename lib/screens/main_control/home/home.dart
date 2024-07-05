import 'package:flutter/material.dart';
import 'package:tixehr/constants/colors.dart';
import 'package:tixehr/constants/images.dart';
import 'package:tixehr/enums/sell_card_type.dart';
import 'package:tixehr/screens/widgets/sell_card_widget.dart';

import '../../widgets/sell_card_featured_shoe.dart';

class THHomeScreen extends StatelessWidget {
  const THHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          navigationHome(),
          jordan(context),
          recentlySearched(context),
          searched(context),
          jordan(context)
        ],
      ),
    ));
  }

  Widget navigationHome() {
    return Padding(
      padding: const EdgeInsets.only(right: 24.0, left: 24.0, top: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                  color: THColors.greyColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: TextButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text("Obuća",
                              style: TextStyle(
                                  color: THColors.darkColor,
                                  fontWeight: FontWeight.bold)),
                        )))),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                  color: THColors.greyColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: TextButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text("Odjeća",
                              style: TextStyle(
                                  color: THColors.darkColor,
                                  fontWeight: FontWeight.bold)),
                        )))),
          )),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                decoration: BoxDecoration(
                  color: THColors.greyColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                    child: TextButton(
                        onPressed: () {},
                        child: const Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Text("Dodaci",
                              style: TextStyle(
                                  color: THColors.darkColor,
                                  fontWeight: FontWeight.bold)),
                        )))),
          )),
        ],
      ),
    );
  }

  Widget jordan(context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              top: 20, bottom: 20, right: 24.0, left: 24.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Jordan",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 24.0, left: 24.0),
          child: Row(
            children: <Widget>[
              const Flexible(
                flex: 2,
                child: SizedBox(
                  height: 250,
                  child: THSellCardWidget(
                    type: THSellCardType.jordanOne,
                    backgroundImage: THImages.jumpanLogo,
                    backgroundColor: Color.fromARGB(255, 22, 21, 21),
                  ),
                ),
              ),
              const SizedBox(width: 10), // use Spacer
              Flexible(
                flex: 1,
                child: SizedBox(
                  height: 250,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Expanded(
                        child: THSellCardWidget(
                          type: THSellCardType.jordanOne,
                          backgroundColor: THColors.redColor,
                          backgroundImage: THImages.jordan1,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Expanded(
                        child: THSellCardWidget(
                          type: THSellCardType.jordanOne,
                          backgroundColor: Colors.grey[500],
                          backgroundImage: THImages.jordan4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget recentlySearched(context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              top: 20, bottom: 20, right: 24.0, left: 24.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Nedavno pregledavano",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  width: 150,
                  margin: const EdgeInsets.only(right: 10),
                  child: const THSellCardFeaturedShoe(
                    backgroundImage: THImages.unknownShoe,
                    shoeName: "Brend Ime",
                    colorOfShoe: "Boja",
                    priceOfShoe: "123",
                  ),
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget searched(context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(
              top: 20, bottom: 20, right: 24.0, left: 24.0),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Text(
              "Pretraživano",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0),
          child: SizedBox(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 20,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  color: Colors.black,
                  width: 250,
                  margin: const EdgeInsets.only(right: 10),
                  child: Stack(children: [
                    Image.asset(THImages.filterFirstShoe, fit: BoxFit.cover),
                    Positioned(
                        bottom: 0,
                        child: Container(
                            color: THColors.greyColor,
                            height: 30,
                            width: 250,
                            child: const Padding(
                              padding:
                                  const EdgeInsets.only(top: 3.0, left: 5.0),
                              child: Text(
                                "Ispod 150 €",
                                style: TextStyle(
                                    color: THColors.darkColor,
                                    fontWeight: FontWeight.w700),
                              ),
                            )))
                  ]),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
