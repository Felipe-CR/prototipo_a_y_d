import 'package:fase1/components/bottom_navbar.dart';
import 'package:fase1/constants.dart';
import 'package:fase1/screens/details/components/TiendaDePuntos/components/body_tp.dart';
import 'package:flutter/material.dart';

class TiendaDePuntos extends StatelessWidget {
  const TiendaDePuntos({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kPrimaryColor,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_sharp),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: <Widget> [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.add_shopping_cart),
            onPressed: () {},
          ),
          const SizedBox(width:  kDefaultPadding / 2)
        ],
      ),
      body: const BodyTP(),
      bottomNavigationBar: const MyBottomNavBar(), // Ver si se conserva o se elimina
    );
  }

}