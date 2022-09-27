import 'package:flutter/material.dart';
import 'package:portfolio_v3/src/presentation/views/home.dart';

const String home = "/";

Route<dynamic> controller(RouteSettings settings) {
  switch (settings.name) {
    case home:
      return MaterialPageRoute(
        builder: (context) => const Home(),
      );
    default:
      throw ("route is unavailable :(");
  }
}
