import 'package:flutter/material.dart';
import 'components/Verde/body_v.dart';

class DetailsScreenVerde extends StatelessWidget {
  const DetailsScreenVerde({
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: BodyVerde(),
    );
  }
}