import 'package:flutter/material.dart';
import 'package:portfolio_v3/src/presentation/widgets/contact_me.dart';
import 'package:portfolio_v3/src/presentation/widgets/responsive.dart';
import 'dart:html' as html;

class InfoContent extends StatelessWidget {
  const InfoContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final screenSize = MediaQuery.of(context).size;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Devwraithe",
              textAlign: TextAlign.center,
              style: textTheme.bodyText1?.copyWith(
                color: Colors.white,
                fontWeight: FontWeight.w200,
              ),
            ),
            GestureDetector(
              onTap: () => html.window.open(
                "https://docs.google.com/document/d/1oGvMtK5akSp09vGBTzTiRzUXXaPCR6iIsPV9Zrpge8M/edit?usp=sharing",
                "_blank",
              ),
              child: Text(
                Responsive.isMobile(context) ? "Resume" : "Download Résumé",
                textAlign: TextAlign.center,
                style: textTheme.bodyText1?.copyWith(
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 78),
        Text(
          "Hi! I'm a software engineer with experience in building exceptional experiences across operating systems. I'm currently open to opportunities.",
          // "Hej! I'm a designer from Sweden, based in Gothenburg. Currently at Spotify—focusing on the holistic mobile experience and design system."
          // "I'm an independent interactive designer with twelve years of experience in art direction and building appealing experiences for the web ecosystem.",
          style: Responsive.isMobile(context)
              ? textTheme.headline5?.copyWith(
                  fontWeight: FontWeight.w200,
                  height: 1.42,
                )
              : textTheme.headline4?.copyWith(
                  fontWeight: FontWeight.w200,
                  height: 1.3,
                ),
        ),
        const SizedBox(height: 78),
        Text(
          "I specialize in development of mobile and web applications using the Flutter framework with a strong focus on usability and interaction.",
          // "I specialize in visual design with a strong focus on interaction. I also love to illustrate elements to make each experience unique.",
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
        const SizedBox(height: 18),
        Text(
          "I'm passionate about developing accessible and usable applications that works on almost any device and I specialize in using the Flutter framework for fueling this passion. I've had the priviledge to work on several products, from a platform designed for service providers and small to medium businesses (SMBs) to a mobile application built exclusively for store owners (especially within the clothing and apparels sector). My main focus these days is on bringing futuristic designs to life and how they can help shape the world's view and use of technology and also expanding my skillset and capabilities with Flutter so they can be applied to more devices, systems and industries.",
          style: textTheme.bodyText1?.copyWith(
            fontWeight: FontWeight.w200,
            height: 1.68,
            color: const Color(0XFF636364),
          ),
        ),
        const SizedBox(height: 78),
        Responsive.isDesktop(context) ? const GetInTouch() : const SizedBox(),
      ],
    );
  }
}
