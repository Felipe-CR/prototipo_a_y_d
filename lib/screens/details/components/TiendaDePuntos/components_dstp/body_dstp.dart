import 'package:fase1/constants.dart';
import 'package:fase1/screens/details/components/TiendaDePuntos/components_dstp/add_to_cart.dart';
import 'package:fase1/screens/details/components/TiendaDePuntos/components_dstp/color_and_size.dart';
import 'package:fase1/screens/details/components/TiendaDePuntos/components_dstp/counter_with_fav_btn.dart';
import 'package:fase1/screens/details/components/TiendaDePuntos/components_dstp/description.dart';
import 'package:fase1/screens/details/components/TiendaDePuntos/components_dstp/product_title_with_image.dart';
import 'package:fase1/screens/details/components/TiendaDePuntos/product.dart';
import 'package:flutter/material.dart';

class BodyDSTP extends StatelessWidget{
  const BodyDSTP({
    Key? key,
    required this.product
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget> [
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget> [
                Container(
                  margin: EdgeInsets.only(top:  size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.12,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget> [
                      ColorAndSize(product: product),
                      const SizedBox(height: kDefaultPadding / 2),
                      Description(product: product),
                      const SizedBox(height: kDefaultPadding / 2),
                      CounterWithFavBtn(product: product),
                      const SizedBox(height: kDefaultPadding / 2),
                      AddToCart(product: product),
                    ],
                  ),
                ),
                ProductTitleWithImage(product: product),
              ],
            ),
          )
        ],
      ),
    );
  }

}