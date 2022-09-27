import 'package:flutter/material.dart';

class Responsive extends StatelessWidget {
  final Widget desktop;
  final Widget? largeTab;
  final Widget? midTab;
  final Widget? smallTab;
  final Widget? mobile;

  const Responsive({
    Key? key,
    required this.desktop,
    this.largeTab,
    this.midTab,
    this.smallTab,
    this.mobile,
  }) : super(key: key);

  static bool isMobile(BuildContext context) {
    return MediaQuery.of(context).size.width <= 575.98;
  }

  static bool isTablet(BuildContext context) {
    return MediaQuery.of(context).size.width >= 576 &&
        MediaQuery.of(context).size.width <= 991.98;
  }

  static bool isDesktop(BuildContext context) {
    return MediaQuery.of(context).size.width >= 992;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth >= 992) {
          return desktop;
        } else if (constraints.maxWidth >= 576 &&
            constraints.maxWidth <= 991.98) {
          return smallTab ?? desktop;
        } else if (constraints.maxWidth <= 575.98) {
          return mobile ?? desktop;
        } else {
          return desktop;
        }
      },
    );
  }
}
