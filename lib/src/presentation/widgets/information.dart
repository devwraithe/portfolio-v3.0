import 'package:flutter/material.dart';
import 'package:portfolio_v3/src/presentation/widgets/info_content.dart';
import 'package:portfolio_v3/src/presentation/widgets/responsive.dart';

class Information extends StatefulWidget {
  const Information({Key? key}) : super(key: key);
  @override
  State<Information> createState() => _InformationState();
}

class _InformationState extends State<Information> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return ScrollConfiguration(
      behavior: ScrollConfiguration.of(context).copyWith(scrollbars: false),
      child: Container(
        color: const Color(0XFF141414),
        width: Responsive.isDesktop(context)
            ? screenSize.width * 0.5
            : screenSize.width,
        child: Responsive.isDesktop(context)
            ? const SingleChildScrollView(
                padding: EdgeInsets.symmetric(
                  horizontal: 38,
                  vertical: 32,
                ),
                child: InfoContent(),
              )
            : const InfoContent(),
      ),
    );
  }
}
