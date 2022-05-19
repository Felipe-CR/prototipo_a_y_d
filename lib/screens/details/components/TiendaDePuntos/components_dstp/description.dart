import 'package:fase1/constants.dart';
import 'package:flutter/material.dart';

import '../product.dart';

class Description extends StatelessWidget{

  final Product product;

  const Description({
    Key? key,
    required this.product,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        product.description,
        style: const TextStyle(height: 1.5)
      ),
    );
  }

}