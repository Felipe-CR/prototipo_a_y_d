import 'package:fase1/screens/details/components/perfil_recicladores/profile1.dart';
import 'package:fase1/screens/details/components/perfil_recicladores/profile2.dart';
import 'package:fase1/screens/details/components/perfil_recicladores/profile3.dart';
import 'package:fase1/screens/details/components/perfil_recicladores/profile4.dart';
import 'package:fase1/screens/details/components/perfil_recicladores/profile5.dart';
import 'package:fase1/screens/details/components/perfil_recicladores/profile6.dart';
import 'package:flutter/material.dart';
import '../../../constants.dart';

class FeaturedRecicladores extends StatelessWidget {
  const FeaturedRecicladores({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal, //Cambiar de formato
      child: Row(
        children: <Widget>[
          FeaturedRecicladoresCard(
              image: "assets/images/Persona1.png",
              //tittle: "",
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Profile1(),
                    )
                );
              },
          ),

          FeaturedRecicladoresCard(
              image: "assets/images/PersonaMujer1.png",
              //tittle: "",
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Profile2(),
                    ),
                );
              },
          ),

          FeaturedRecicladoresCard(
              image: "assets/images/PersonaMujer2.png",
              //tittle: "",
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Profile3(),
                    ),
                );
              },
          ),

          FeaturedRecicladoresCard(
              image: "assets/images/Persona3.png",
              //tittle: "",
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Profile4(),
                  ),
                );
              },
          ),

          FeaturedRecicladoresCard(
              image: "assets/images/PersonaMujer3.png",
              //tittle: "",
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Profile5()
                    ),
                );
              },
          ),

          FeaturedRecicladoresCard(
              image: "assets/images/Persona4.png",
              //tittle: "",
              press: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const Profile6(),
                    ),
                );
              },
          )

        ],
      ),
    );
  }
}

class FeaturedRecicladoresCard extends StatelessWidget {
  const FeaturedRecicladoresCard({
    Key? key,
    required this.image,
    required this.press,
    //required this.tittle,
  }) : super(key: key);

  final String image; //tittle;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding / 2,
        ),
        width: size.width * 0.8,
        height: 185,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image),
          ),
        ),

      ),

    );
  }
}