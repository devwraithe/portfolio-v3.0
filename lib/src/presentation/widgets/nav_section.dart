import 'package:flutter/material.dart';
import 'dart:html' as html;

class NavSection extends StatelessWidget {
  final String linkOne, linkTwo;
  const NavSection({
    Key? key,
    required this.linkOne,
    required this.linkTwo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          linkOne,
          textAlign: TextAlign.center,
          style: textTheme.bodyText1?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.w200,
          ),
        ),
        GestureDetector(
          onTap: () => html.window.open(
            "https://www.github.com/devwraithe",
            "_blank",
          ),
          child: Text(
            linkTwo,
            textAlign: TextAlign.center,
            style: textTheme.bodyText1?.copyWith(
              decoration: TextDecoration.underline,
              decorationStyle: TextDecorationStyle.solid,
              color: Colors.white,
              fontWeight: FontWeight.w200,
            ),
          ),
        ),
      ],
    );
  }
}
