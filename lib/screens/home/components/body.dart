import 'package:fase1/screens/home/components/featurred_recicladores.dart';
import 'package:fase1/screens/home/components/header_with_seachbox.dart';
import 'package:fase1/screens/home/components/recomend_residuos.dart';
import 'package:fase1/screens/home/components/title_with_more_bbtn.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //It will provide us total height and width of our screen
    Size size = MediaQuery.of(context).size;
    //it enable scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: <Widget> [
          HeaderWithSearchBox(
              size: size
          ),
          TitleWithMoreBtn(
              title: "Recomendaciones",
              press: () {}
          ),
          const RecomendResiduosB(),
          TitleWithMoreBtn(
              title: "Entidades Recolectoras",
              press: () {}
          ),
          const FeaturedRecicladores()
        ],
      ),
    );
  }
}