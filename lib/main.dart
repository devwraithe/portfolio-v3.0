import 'package:flutter/material.dart';
import 'package:portfolio_v3/src/presentation/views/home.dart';
import 'package:portfolio_v3/src/config/theme.dart';
import 'package:portfolio_v3/src/presentation/widgets/scroll_behavior.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(
    const LosDevwraitos(),
  );
}

class LosDevwraitos extends StatelessWidget {
  const LosDevwraitos({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ibrahim Ibrahim - Mobile Engineer',
      scrollBehavior: CustomScrollBehavior(),
      debugShowCheckedModeBanner: false,
      useInheritedMediaQuery: true,
      theme: themeData,
      home: const Home(),
    );
  }
}
