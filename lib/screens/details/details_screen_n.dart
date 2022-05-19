import 'package:flutter/material.dart';
import 'components/Negro/body_n.dart';

class DetailsScreenNegro extends StatelessWidget {
  const DetailsScreenNegro({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyNegro(),
    );
  }
}