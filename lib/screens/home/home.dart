import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tixehr/constants/images.dart';
import 'package:tixehr/screens/widgets/navigation_widget.dart';

class THHomeScreen extends StatelessWidget{
  const THHomeScreen({super.key});

  @override
  Widget build(BuildContext context){
    var widthOfContainer = MediaQuery.of(context).size.width * 0.4;
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
          const THNavigation(),
          Image.asset(
            THImages.landingImage,
            width: widthOfContainer,
          ),
          Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Kategorije", style: GoogleFonts.merriweather(
                  textStyle: const TextStyle(
                    fontSize: 20
                  )
                )),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 150,
                        margin: const EdgeInsets.only(right:20),
                        color: Colors.grey,
                      ),
                      Container(
                        width: 150,
                        margin: const EdgeInsets.only(right: 20),
                        color: Colors.grey,
                      ),
                      Container(
                        width: 150,
                        margin: const EdgeInsets.only(right: 20),
                        color: Colors.grey,
                      ),
                       Container(
                        width: 150,
                        margin: const EdgeInsets.only(right: 20),
                        color: Colors.grey,
                      ),
                       Container(
                        width: 150,
                        margin: const EdgeInsets.only(right: 20),
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ])),
              Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Brendovi", style: GoogleFonts.merriweather(
                  textStyle: const TextStyle(
                    fontSize: 20
                  )
                )),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 150,
                        margin: const EdgeInsets.only(right: 20),
                        color: Colors.grey,
                      ),
                      Container(
                        width: 150,
                        margin: const EdgeInsets.only(right: 20),
                        color: Colors.grey,
                      ),
                      Container(
                        width: 150,
                        margin: const EdgeInsets.only(right: 20),
                        color: Colors.grey,
                      ),
                       Container(
                        width: 150,
                        margin: const EdgeInsets.only(right: 20),
                        color: Colors.grey,
                      ),
                       Container(
                        width: 150,
                        margin: const EdgeInsets.only(right: 20),
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ])),
                Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text("Najnovije", style: GoogleFonts.merriweather(
                  textStyle: const TextStyle(
                    fontSize: 20
                  )
                )),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  height: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      Container(
                        width: 150,
                        margin: const EdgeInsets.only(right: 20),
                        color: Colors.grey,
                      ),
                      Container(
                        width: 150,
                        margin: const EdgeInsets.only(right: 20),
                        color: Colors.grey,
                      ),
                      Container(
                        width: 150,
                        margin: const EdgeInsets.only(right: 20),
                        color: Colors.grey,
                      ),
                       Container(
                        width: 150,
                        margin: const EdgeInsets.only(right: 20),
                        color: Colors.grey,
                      ),
                       Container(
                        width: 150,
                        margin: const EdgeInsets.only(right: 20),
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ]))
        ]),
      ));
  }
}