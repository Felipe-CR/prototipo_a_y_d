import 'package:flutter/material.dart';
import '../../../../constants.dart';

class TitleB extends StatelessWidget {
  const TitleB({
    Key? key,
    required this.title1,
    required this.title2,
  }) : super(key: key);

  final String title1, title2;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        children: <Widget>[
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "$title1\n",
                  style: Theme.of(context)
                      .textTheme
                      .headline4
                      ?.copyWith(color: kTextColor, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: title2,
                  style: const TextStyle(
                    fontSize: 20,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),
          const Spacer(),
        ],
      ),
    );
  }
}