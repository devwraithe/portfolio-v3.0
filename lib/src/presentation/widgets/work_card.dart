import 'package:flutter/material.dart';

class WorkCard extends StatelessWidget {
  final String image, title, brand;
  final Color color;
  const WorkCard({
    Key? key,
    required this.image,
    required this.title,
    required this.brand,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return SizedBox(
      width: double.infinity,
      height: 440,
      child: Card(
        elevation: 0,
        color: color,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: textTheme.headline5?.copyWith(
                fontWeight: FontWeight.w200,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              brand,
              textAlign: TextAlign.center,
              style: textTheme.subtitle2?.copyWith(
                fontWeight: FontWeight.w200,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
