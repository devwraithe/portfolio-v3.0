import 'package:flutter/material.dart';
import 'package:portfolio_v3/src/presentation/widgets/contact_me.dart';
import 'package:portfolio_v3/src/presentation/widgets/nav_section.dart';
import 'package:portfolio_v3/src/presentation/widgets/responsive.dart';
import 'package:portfolio_v3/src/presentation/widgets/work_item.dart';
import 'dart:html' as html;

class Projects extends StatefulWidget {
  const Projects({Key? key}) : super(key: key);
  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> with TickerProviderStateMixin {
  final List works = [
    {
      "title": "Dutiful Mobile",
      "brand": "Dutiful NG",
      "description":
          "Reimagining the user interface and experience of the actual Netflix mobile application for both Android and iOS devices",
      "image": "https://images.unsplash.com/photo-1556745753-b2904692b3cd",
      "link":
          "https://play.google.com/store/apps/details?id=com.softweb.dutiful_mobile&pli=1",
    },
    {
      "title": "Browse Movies & TV Series",
      "brand": "Netflix - Personal",
      "description":
          "Reimagining the user interface and experience of the actual Netflix mobile application for both Android and iOS devices",
      "image": "https://images.unsplash.com/photo-1574375927938-d5a98e8ffe85",
      "link": "https://github.com/devwraithe/netflix",
    },
    {
      "title": "Realtime Weather Updates",
      "brand": "Open Weather",
      "description":
          "A weather forecasting application inspired by Apple Weather and Open Weather Map. Developed using Flutter and BLoC.",
      "image": "https://images.unsplash.com/photo-1562155618-e1a8bc2eb04f",
      "link": "https://github.com/devwraithe/open_weather",
    },
    {
      "title": "Coffee Made Easy",
      "brand": "Starbucks - Personal",
      "description":
          "Rapid prototype designed to be an improved version of the current Starbucks Coffee Machine's user interface",
      "image": "https://images.unsplash.com/photo-1546815670-5c5e437ffc6d",
      "link": "https://github.com/devwraithe/starbucks_coffee_machine",
    },
    {
      "title": "Food On Your Doorstep",
      "brand": "Parallel Thirty Seven",
      "description":
          "Based on Bolt Food and Glovo, Parallel 37 is a mobile app for ordering a wide range of snacks, food and drinks from different shops",
      "image": "https://images.unsplash.com/photo-1590846406792-0adc7f938f1d",
      "link": "https://github.com/devwraithe/parallel_37",
    },
  ];

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
        child: Responsive.isMobile(context) || Responsive.isTablet(context)
            ? Column(
                children: [
                  for (var work in works)
                    WorkItem(
                      title: work['title'],
                      brand: work['brand'],
                      image: work['image'],
                      description: work['description'],
                      action: () => html.window.open(
                        work['link'],
                        "_blank",
                      ),
                    ),
                  Responsive.isDesktop(context)
                      ? const SizedBox()
                      : const GetInTouch(),
                ],
              )
            : Stack(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: works.length,
                    itemBuilder: (context, index) {
                      final work = works[index];
                      return WorkItem(
                        title: work['title'],
                        brand: work['brand'],
                        image: work['image'],
                        description: work['description'],
                        action: () => html.window.open(
                          work['link'],
                          "_blank",
                        ),
                      );
                    },
                  ),
                  Container(
                    padding: const EdgeInsets.only(
                      top: 32,
                      left: 38,
                      right: 38,
                    ),
                    alignment: Alignment.topCenter,
                    child: const NavSection(
                      linkOne: "Works",
                      linkTwo: "GitHub",
                    ),
                  )
                ],
              ),
      ),
    );
  }
}
