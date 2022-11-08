import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_v3/src/presentation/widgets/responsive.dart';
import 'dart:html' as html;

class GetInTouch extends StatelessWidget {
  const GetInTouch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Responsive.isMobile(context) || Responsive.isTablet(context)
            ? Padding(
                padding: const EdgeInsets.only(top: 52),
                child: Text(
                  "Get In Touch",
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
            : Text(
                "Get In Touch",
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
        Text.rich(
          TextSpan(
            text: "Wanna talk? ",
            style: textTheme.bodyText1?.copyWith(
              height: 1.6,
              fontWeight: FontWeight.w200,
              color: const Color(0XFF636364),
            ),
            children: [
              const TextSpan(text: "You can send a message to my "),
              TextSpan(
                text: "Email",
                recognizer: TapGestureRecognizer()
                  ..onTap = () => html.window.open(
                        "mailto:ibrahimibrahim851@outlook.com",
                        "_blank",
                      ),
                style: const TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
              const TextSpan(
                  text:
                      " and I'll try to reply as soon as possible. You can also connect and reach out to me via "),
              TextSpan(
                text: "Twitter",
                recognizer: TapGestureRecognizer()
                  ..onTap = () => html.window.open(
                        "https://www.twitter.com/devwraithe",
                        "_blank",
                      ),
                style: const TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
              const TextSpan(text: " and "),
              TextSpan(
                text: "LinkedIn",
                recognizer: TapGestureRecognizer()
                  ..onTap = () => html.window.open(
                        "https://www.linkedin.com/in/ibrahimaibrahim",
                        "_blank",
                      ),
                style: const TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
              const TextSpan(text: " . "),
              const TextSpan(
                  text:
                      "Would you like to see more about what I'm capable of?  Have a look at my "),
              TextSpan(
                text: "GitHub",
                recognizer: TapGestureRecognizer()
                  ..onTap = () => html.window.open(
                        "https://www.github.com/devwraithe",
                        "_blank",
                      ),
                style: const TextStyle(
                  color: Colors.white,
                  decoration: TextDecoration.underline,
                  decorationStyle: TextDecorationStyle.solid,
                ),
              ),
              const TextSpan(
                  text:
                      " profile too see some of the new things I've been building lately and the new up-to-date technologies I'm using to build them"),
            ],
          ),
        ),
      ],
    );
  }
}
