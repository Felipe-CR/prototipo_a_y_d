import 'package:fase1/constants.dart';
import 'package:fase1/screens/details/components/TiendaDePuntos/product.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  const ItemCard({
    Key? key,
    required this.product,
    required this.press
  }) : super(key: key);

  final Product product;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {}, //el press debe ir sin parentesis, pero no funciona
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: Colors.white,
              ),
              child: Hero(
                tag: "${product.id}",
                child: Image.asset(
                    product.image,
                    width: 135),
              ),
            ),
          ),
          Text(
            product.title,
            style: const TextStyle(color: kTextColor),
          ),
          Text(
            "\$${product.price}",
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }

}