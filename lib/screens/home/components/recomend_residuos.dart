import 'package:fase1/screens/details/details_screen_b.dart';
import 'package:fase1/screens/details/details_screen_n.dart';
import 'package:fase1/screens/details/details_screen_v.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class RecomendResiduosB extends StatelessWidget {
  const RecomendResiduosB({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget> [
          const SizedBox(width: 10),

          RecomendResiduosBCard(
            image: "assets/images/ReciclajeBlanco.png",
            tittle1: "Residuos Aprovechables",
            tittle2: "Caneca Blanca",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsScreenBlanco(),
                  )
              );
            },
          ),

          const SizedBox(width: 10),

          RecomendResiduosBCard(
            image: "assets/images/ReciclajeNegro.png",
            tittle1: "Residuos No Aprovechables",
            tittle2: "Caneca Negro",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsScreenNegro(),
                  )
              );
            },
          ),

          const SizedBox(width: 10),

          RecomendResiduosBCard(
            image: "assets/images/ReciclajeVerde.png",
            tittle1: "Residuos Orgánicos",
            tittle2: "Caneca Verde",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailsScreenVerde(),
                  )
              );
            },
          )
        ],
      ),
    );
  }
}

class RecomendResiduosBCard extends StatelessWidget {
  const RecomendResiduosBCard({
    Key? key,
    required this.image,
    required this.tittle1,
    required this.tittle2,
    required this.press,
  }) : super(key: key);

  final String image, tittle1, tittle2;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return SizedBox(
      width: size.width * 0.4,
      child: Column(
        children: <Widget>[
          Image.asset(image),
          GestureDetector(
            onTap: press,
            child: Container(
                margin: const EdgeInsets.only(
                  // left: kDefaultPadding,
                  // top: kDefaultPadding / 2,
                  bottom: kDefaultPadding * 3,
                ),
                padding: const EdgeInsets.all(kDefaultPadding / 2),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23),
                    )
                  ],
                ),
                child: Row(
                  children: <Widget>[
                    Flexible(child:
                    Column(children: [
                      Text(tittle1.toUpperCase(),
                        style: TextStyle(
                          color: kPrimaryColor.withOpacity(0.5),
                        ),
                      ),
                      Text(tittle2.toUpperCase(),
                        style: const TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ],)
                    ),
                  ],
                )
            ),
          ),
        ],
      ),
    );
  }
}