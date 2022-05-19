import 'package:fase1/constants.dart';
import 'package:flutter/material.dart';
import 'iconcard_n.dart';

class ImageAndIconsN extends StatelessWidget {
  const ImageAndIconsN({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kDefaultPadding * 3),
      child: SizedBox(
          height: size.height * 0.8,
          child:Row(
            children: <Widget> [
              Expanded(
                child: Padding(
                  padding:
                  const EdgeInsets.symmetric(vertical: kDefaultPadding * 3),
                  child: Column(
                    children: <Widget> [
                      Align(
                        alignment: Alignment.topLeft,
                        child: IconButton(
                          padding:
                          const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                          icon: const Icon(Icons.arrow_back_sharp),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        ),
                      ),
                      const Spacer(),
                      const IconCard(
                        icon: "assets/icons/mundo.svg",
                      ),
                      const IconCard(
                        icon: "assets/icons/separacion.svg",
                      ),
                      const IconCard(
                        icon: "assets/icons/recycle.svg",
                      ),
                      const IconCard(
                        icon: "assets/icons/search.svg",
                      )
                    ],
                  ),
                ),
              ),
              Container(
                height: size.height * 0.8,
                width: size.width *0.75,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft:Radius.circular(63),
                    bottomLeft: Radius.circular(63),
                  ),
                  boxShadow: [
                    BoxShadow(
                      offset: const Offset(0, 10),
                      blurRadius: 60,
                      color: kPrimaryColor.withOpacity(0.29),
                    ),
                  ],
                  image: const DecorationImage(
                      alignment: Alignment.center,
                      fit: BoxFit.cover,
                      image: AssetImage("assets/images/ReciclajeNegro.png")
                  ),
                ),
              ),
            ],
          )
      ),
    );
  }
}