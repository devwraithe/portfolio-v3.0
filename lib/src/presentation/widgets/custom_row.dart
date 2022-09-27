import 'package:flutter/material.dart';
import 'dart:html' as html;

class CustomRow extends StatelessWidget {
  final String firstLink, secondLink;
  const CustomRow({
    Key? key,
    required this.firstLink,
    required this.secondLink,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          firstLink.toUpperCase(),
          style: textTheme.caption?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
        GestureDetector(
          onTap: () =>
              html.window.open("https://www.github.com/devwraithe", "_blank"),
          child: Text(
            secondLink.toUpperCase(),
            style: textTheme.caption?.copyWith(
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ],
    );
  }
}
