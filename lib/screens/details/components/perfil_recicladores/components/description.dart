import 'package:flutter/material.dart';

class Description extends StatelessWidget{
  final String text;

  const Description({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Text(text,
        style: const TextStyle(
          fontSize: 20
        ),
      ),
    );
  }

}