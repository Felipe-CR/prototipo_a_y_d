import 'package:fase1/constants.dart';
import 'package:fase1/screens/details/components/TiendaDePuntos/components_dstp/body_dstp.dart';
import 'package:fase1/screens/details/components/TiendaDePuntos/product.dart';
import 'package:flutter/material.dart';

class DetailsScreenTP extends StatelessWidget{
  const DetailsScreenTP({
    Key? key,
    required this.product
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: buildAppBar(context),
      body: BodyDSTP(product: product),
    );
  }

  buildAppBar(BuildContext context) {}

}