import 'package:fase1/constants.dart';
import 'package:fase1/screens/details/components/TiendaDePuntos/components/categories.dart';
import 'package:fase1/screens/details/components/TiendaDePuntos/components/item_card.dart';
import 'package:fase1/screens/details/details_screen_tp.dart';
import 'package:flutter/material.dart';
import 'package:fase1/screens/details/components/TiendaDePuntos/product.dart';

class BodyTP extends StatelessWidget {
  const BodyTP({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget> [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            "Tienda de Puntos",
            style: Theme.of(context)
              .textTheme
              .headline5
              ?.copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        const Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisExtent: 100,
                crossAxisSpacing: 1,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => DetailsScreenTP(
                            product: products[index],
                        )
                    )
                ),
              ),
            ),
          ),
        )
      ],
    );
  }

}