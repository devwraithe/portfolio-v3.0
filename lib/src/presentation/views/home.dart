import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:portfolio_v3/src/presentation/widgets/information.dart';
import 'package:portfolio_v3/src/presentation/widgets/projects.dart';
import 'package:portfolio_v3/src/presentation/widgets/responsive.dart';
import 'package:portfolio_v3/src/presentation/widgets/toolkit_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      backgroundColor: const Color(0XFF141414),
      body: Responsive.isMobile(context) || Responsive.isTablet(context)
          ? SingleChildScrollView(
              padding: Responsive.isMobile(context)
                  ? const EdgeInsets.symmetric(
                      horizontal: 22,
                      vertical: 28,
                    )
                  : const EdgeInsets.symmetric(
                      horizontal: 38,
                      vertical: 32,
                    ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Information(),
                  Responsive.isMobile(context) || Responsive.isTablet(context)
                      ? Padding(
                          padding: const EdgeInsets.only(top: 52),
                          child: Text(
                            "Things I've Done",
                            style: Responsive.isMobile(context)
                                ? textTheme.subtitle1?.copyWith(
                                    fontWeight: FontWeight.w200,
                                    height: 1.48,
                                  )
                                : textTheme.headline6?.copyWith(
                                    fontWeight: FontWeight.w200,
                                    height: 1.42,
                                  ),
                          ),
                        )
                      : const SizedBox(),
                  const SizedBox(height: 32),
                  const Projects(),
                ],
              ),
            )
          : Row(
              children: const [
                Information(),
                Projects(),
              ],
            ),
    );
  }
}
