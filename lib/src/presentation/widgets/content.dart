import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:portfolio_v3/src/data/models.dart';
import 'package:portfolio_v3/src/presentation/widgets/card.dart';
import 'package:portfolio_v3/src/presentation/widgets/custom_row.dart';
import 'package:portfolio_v3/src/presentation/widgets/responsive.dart';

class Content extends StatelessWidget {
  const Content({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 48),
        Responsive.isMobile(context)
            ? const CustomRow(
                firstLink: "Devwraithe",
                secondLink: "My GitHub",
              )
            : const CustomRow(
                firstLink: "Ibrahim Ibrahim 'Devwraithe'",
                secondLink: "Explore My Github",
              ),
        const SizedBox(height: 80),
        Text(
          "Hi! My name is Ibrahim and I build softwares for mobile devices. I am a Mobile Engineer specializing in building exceptional cross-platform applications. I also have a 'thing' for nice UIs and futuristic designs.",
          style: Responsive.isMobile(context)
              ? textTheme.subtitle1?.copyWith(
                  fontFamily: "EditorialNew",
                  height: 1.6,
                )
              : Responsive.isTablet(context)
                  ? textTheme.headline3?.copyWith(
                      fontFamily: "EditorialNew",
                      height: 1.6,
                    )
                  : textTheme.headline2?.copyWith(
                      fontFamily: "EditorialNew",
                    ),
        ),
        Responsive.isMobile(context)
            ? const SizedBox(height: 100)
            : const SizedBox(height: 160),
        Responsive.isMobile(context)
            ? Text(
                "Crafts,",
                style: textTheme.headline1?.copyWith(
                  fontFamily: "EditorialNew",
                  fontSize: 80,
                ),
              )
            : Responsive.isTablet(context)
                ? Text(
                    "Crafts",
                    style: textTheme.headline1?.copyWith(
                      fontFamily: "EditorialNew",
                      fontSize: 100,
                    ),
                  )
                : Text(
                    "My Work",
                    style: textTheme.headline1?.copyWith(
                      fontFamily: "EditorialNew",
                      fontSize: 160,
                    ),
                  ),
        const SizedBox(height: 18),
        Text(
          "With keen attention to detail, amazing work ethic, collaboration and excellent problem-solving abilities, I bring a lot to the table when designing software applications.",
          style: Responsive.isMobile(context)
              ? textTheme.subtitle2?.copyWith(
                  fontFamily: "EditorialNew",
                )
              : Responsive.isTablet(context)
                  ? textTheme.headline5?.copyWith(
                      fontFamily: "EditorialNew",
                    )
                  : textTheme.headline4?.copyWith(
                      fontFamily: "EditorialNew",
                    ),
        ),
        Responsive.isMobile(context)
            ? const SizedBox(height: 52)
            : const SizedBox(height: 82),
        Responsive.isMobile(context)
            ? ListView.builder(
                shrinkWrap: true,
                itemCount: WorkModel.works.length,
                itemBuilder: (context, index) {
                  final work = WorkModel.works[index];
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 46),
                    child: WorkCard(
                      title: work.title.toUpperCase(),
                      image: work.image,
                      shortDate: work.shortDate.toUpperCase(),
                      longDate: work.longDate.toUpperCase(),
                      link: work.link,
                    ),
                  );
                },
              )
            : Responsive.isTablet(context)
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: WorkModel.works.length,
                    itemBuilder: (context, index) {
                      final work = WorkModel.works[index];
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 52),
                        child: WorkCard(
                          title: work.title.toUpperCase(),
                          image: work.image,
                          shortDate: work.shortDate.toUpperCase(),
                          longDate: work.longDate.toUpperCase(),
                          link: work.link,
                        ),
                      );
                    },
                  )
                : GridView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 64,
                      crossAxisSpacing: 64,
                    ),
                    itemCount: WorkModel.works.length,
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    itemBuilder: (context, index) {
                      final work = WorkModel.works[index];
                      return WorkCard(
                        title: work.title.toUpperCase(),
                        image: work.image,
                        shortDate: work.shortDate.toUpperCase(),
                        longDate: work.longDate.toUpperCase(),
                        link: work.link,
                      );
                    },
                  ),
        Responsive.isMobile(context)
            ? const SizedBox(height: 82)
            : const SizedBox(height: 82),
        Responsive.isMobile(context)
            ? Text(
                "Contact",
                style: textTheme.headline1?.copyWith(
                  fontFamily: "EditorialNew",
                  fontSize: 80,
                ),
              )
            : Responsive.isTablet(context)
                ? Text(
                    "Contact",
                    style: textTheme.headline1?.copyWith(
                      fontFamily: "EditorialNew",
                      fontSize: 100,
                    ),
                  )
                : Text(
                    "Reach Out",
                    style: textTheme.headline1?.copyWith(
                      fontFamily: "EditorialNew",
                      fontSize: 160,
                    ),
                  ),
        const SizedBox(height: 18),
        Text(
          "Would you love to work together? I value collaboration. Got a job for me? My DMs are open, I'd love to hear from you. You can easily reach me via the following links.",
          style: Responsive.isMobile(context)
              ? textTheme.subtitle2?.copyWith(
                  fontFamily: "EditorialNew",
                )
              : Responsive.isTablet(context)
                  ? textTheme.headline5?.copyWith(
                      fontFamily: "EditorialNew",
                    )
                  : textTheme.headline4?.copyWith(
                      fontFamily: "EditorialNew",
                    ),
        ),
        const SizedBox(height: 56),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: () => html.window.open(
                  "https://www.linkedin.com/in/ibrahimaibrahim", "_blank"),
              child: Text(
                "Connect on LinkedIn",
                style: Responsive.isMobile(context)
                    ? textTheme.headline5?.copyWith(
                        fontFamily: "EditorialNew",
                        decoration: TextDecoration.underline,
                      )
                    : textTheme.headline2?.copyWith(
                        fontFamily: "EditorialNew",
                        decoration: TextDecoration.underline,
                      ),
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () => html.window
                  .open("https://www.github.com/devwraithe", "_blank"),
              child: Text(
                "Explore my GitHub",
                style: Responsive.isMobile(context)
                    ? textTheme.headline5?.copyWith(
                        fontFamily: "EditorialNew",
                        decoration: TextDecoration.underline,
                      )
                    : textTheme.headline2?.copyWith(
                        fontFamily: "EditorialNew",
                        decoration: TextDecoration.underline,
                      ),
              ),
            ),
            const SizedBox(height: 16),
            GestureDetector(
              onTap: () => html.window
                  .open("mailto:ibrahimibrahim851@outlook.com", "_blank"),
              child: Text(
                "Send me an Email",
                style: Responsive.isMobile(context)
                    ? textTheme.headline5?.copyWith(
                        fontFamily: "EditorialNew",
                        decoration: TextDecoration.underline,
                      )
                    : textTheme.headline2?.copyWith(
                        fontFamily: "EditorialNew",
                        decoration: TextDecoration.underline,
                      ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 48),
      ],
    );
  }
}
