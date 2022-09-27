import 'package:flutter/material.dart';
import 'package:portfolio_v3/src/presentation/widgets/custom_row.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final deviceSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned.fill(
            child: PageView.builder(
              onPageChanged: (pos) {
                setState(() {
                  selectedWork = pos;
                });
              },
              itemBuilder: (context, index) {
                return Stack(
                  children: [
                    Stack(
                      fit: StackFit.expand,
                      children: [
                        Image.network(
                          "https://media.richardmille.com/wp-content/uploads/2018/01/23172622/richard-mille-rm-35-02-automatic-rafael-nadal-8934.jpg?dpr=3&width=900",
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                          width: deviceSize.width,
                          height: deviceSize.height,
                        ),
                      ],
                    ),
                    Positioned.fill(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Richard Mille",
                            textAlign: TextAlign.center,
                            style: textTheme.headline1?.copyWith(
                              fontFamily: "Playfair",
                              fontSize: 80,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.2,
                            ),
                          ),
                          Text(
                            "Abeg, I don brainstorm taya, ogun kill una",
                            textAlign: TextAlign.center,
                            style: textTheme.bodyText1?.copyWith(
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                );
                // return Container(
                //   decoration: const BoxDecoration(
                //     image: DecorationImage(
                //       image: NetworkImage(
                //         "https://media.richardmille.com/wp-content/uploads/2018/01/23172622/richard-mille-rm-35-02-automatic-rafael-nadal-8934.jpg?dpr=3&width=900",
                //       ),
                //       filterQuality: FilterQuality.high,
                //       fit: BoxFit.cover,
                //     ),
                //   ),
                //   height: MediaQuery.of(context).size.height,
                //   width: MediaQuery.of(context).size.width,
                //   child: Column(
                //     mainAxisAlignment: MainAxisAlignment.center,
                //     crossAxisAlignment: CrossAxisAlignment.center,
                //     children: [
                //       Text(
                //         "Richard Mille",
                //         textAlign: TextAlign.center,
                //         style: textTheme.headline1?.copyWith(
                //           fontFamily: "Playfair",
                //           fontSize: 80,
                //           fontWeight: FontWeight.w500,
                //           letterSpacing: 1.2,
                //         ),
                //       ),
                //       Text(
                //         "Abeg, I don brainstorm taya, ogun kill una",
                //         textAlign: TextAlign.center,
                //         style: textTheme.bodyText1?.copyWith(
                //           fontWeight: FontWeight.w400,
                //         ),
                //       ),
                //     ],
                //   ),
                // );
              },
            ),
          ),
          Positioned(
            top: 32,
            width: deviceSize.width,
            child: const CustomRow(
              firstLink: "Robin Mastromarino",
              secondLink: "About Me",
            ),
          ),
          Positioned(
            bottom: 32,
            width: deviceSize.width,
            child: const CustomRow(
              firstLink: "September 2026",
              secondLink: "Get In Touch",
            ),
          ),
        ],
      ),
    );
  }

  late PageController _pageController;
  int selectedWork = 1;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 1,
      viewportFraction: 1,
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
