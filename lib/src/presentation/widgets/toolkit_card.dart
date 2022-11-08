import 'package:flutter/material.dart';

class ToolkitCard extends StatelessWidget {
  final String icon, title;
  const ToolkitCard({
    Key? key,
    required this.icon,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Expanded(
      child: Card(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(
                icon,
                width: 180,
                height: 180,
              ),
              Text(
                title,
                style: textTheme.subtitle2?.copyWith(
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
