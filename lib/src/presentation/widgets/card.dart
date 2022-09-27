import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:portfolio_v3/src/presentation/widgets/responsive.dart';

class WorkCard extends StatelessWidget {
  final String image, title, shortDate, longDate, link;

  const WorkCard({
    Key? key,
    required this.image,
    required this.title,
    required this.shortDate,
    required this.longDate,
    required this.link,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final screenWidth = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () => html.window.open(link, "_blank"),
      child: Column(
        children: [
          Responsive.isMobile(context)
              ? Image.asset(
                  image,
                  width: screenWidth,
                  fit: BoxFit.cover,
                  filterQuality: FilterQuality.high,
                )
              : Responsive.isTablet(context)
                  ? Image.asset(
                      image,
                      width: screenWidth,
                      fit: BoxFit.cover,
                      filterQuality: FilterQuality.high,
                    )
                  : Expanded(
                      child: Image.asset(
                        image,
                        width: screenWidth,
                        fit: BoxFit.cover,
                        filterQuality: FilterQuality.high,
                      ),
                    ),
          const SizedBox(height: 22),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: textTheme.caption?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
