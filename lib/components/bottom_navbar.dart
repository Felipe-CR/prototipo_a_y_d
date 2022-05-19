import 'package:fase1/screens/details/tienda_de_puntos.dart';
import 'package:fase1/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import '../constants.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({
    Key? key,
  }) : super(key:key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        left: kDefaultPadding * 2,
        right: kDefaultPadding * 2,
        bottom: kDefaultPadding,
      ),
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              blurRadius: 40,
              color: kPrimaryColor.withOpacity(0.50)
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget> [
          IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()
                    ),
                );
              }
          ),
          IconButton(
              icon: const Icon(Icons.airport_shuttle_rounded),
              onPressed: () {}
          ),
          IconButton(
              icon: const Icon(Icons.store_sharp),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const TiendaDePuntos()
                  ),
                );
              }
          ),
          // IconButton(
          //     icon: const Icon(Icons.account_circle),
          //     onPressed: () {}
          // ),
        ],
      ),
    );
  }
}