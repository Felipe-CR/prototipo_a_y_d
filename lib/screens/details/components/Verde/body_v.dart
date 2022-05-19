import 'package:fase1/screens/details/components/Blanco/title_b.dart';
import 'package:flutter/material.dart';
import '../../../../constants.dart';
import 'image_and_icons_v.dart';

class BodyVerde extends StatelessWidget {
  const BodyVerde({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget> [
          ImageAndIconsV(size: size),
          const TitleB(
              title1: "Orgánicos\nAprovechables",
              title2: "Caneca Verde"
          ),
          const SizedBox(height: kDefaultPadding),
          Row(
            children: <Widget> [
              SizedBox(
                width: size.width / 2,
                height: 84,
                child: FlatButton(
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                  color: kPrimaryColor,
                  onPressed: () {},
                  child: const Text(
                    "Recolección",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: FlatButton(
                  onPressed: () {},
                  child: const Text(
                    "Descripción",
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}