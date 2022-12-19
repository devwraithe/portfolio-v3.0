import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 72),
          child: Column(
            children: [
              // >>> Navigation Bar <<< //
              Padding(
                padding: const EdgeInsets.only(top: 38),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Craftsman, Developer, Engineer",
                          style: textTheme.bodyText1?.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 42),
                        Text(
                          "Professional Hitman for Hire",
                          style: textTheme.bodyText1?.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(width: 42),
                        Text(
                          "Reach out to me_at_devwraithe.com",
                          style: textTheme.bodyText1?.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      "Download Resume",
                      style: textTheme.bodyText1?.copyWith(
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 88),

              // >>> Intro Headline <<< //
              Text(
                "Devwraithe is an engineer crafting bespoke mobile applications from the trenches of Ilorin, Nigeria. He's currently open to opportunities.",
                textAlign: TextAlign.left,
                style: textTheme.headline3?.copyWith(
                  fontWeight: FontWeight.w400,
                  height: 1.4,
                ),
              ),
              const SizedBox(height: 100),
              // >>> Projects Section <<< //
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.network(
                      "https://uploads-ssl.webflow.com/6211198f70481836fc440447/6218ec70a676385335367c71_astrazeneca-p-1080.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 54),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Samsung Pay",
                          style: textTheme.subtitle2?.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "Determination and Control",
                          style: textTheme.headline5?.copyWith(
                            fontWeight: FontWeight.w400,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "BrustKrebs is an interactive breast cancer information platform where you can see the different stages and versions of cancer. On the platform you can find more information about the subject and the right treatment. Samsung Pay is designed exclusively for peers to transfer money fast and easy.",
                          style: textTheme.bodyText1?.copyWith(
                            fontWeight: FontWeight.w400,
                            height: 1.52,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 32),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.network(
                      "https://uploads-ssl.webflow.com/6211198f70481836fc440447/6218ec70a676385335367c71_astrazeneca-p-1080.jpeg",
                      fit: BoxFit.cover,
                    ),
                  ),
                  const SizedBox(width: 54),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Samsung Pay",
                          style: textTheme.subtitle2?.copyWith(
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const SizedBox(height: 6),
                        Text(
                          "Determination and Control",
                          style: textTheme.headline5?.copyWith(
                            fontWeight: FontWeight.w400,
                            height: 1.2,
                          ),
                        ),
                        const SizedBox(height: 16),
                        Text(
                          "BrustKrebs is an interactive breast cancer information platform where you can see the different stages and versions of cancer. On the platform you can find more information about the subject and the right treatment. Samsung Pay is designed exclusively for peers to transfer money fast and easy.",
                          style: textTheme.bodyText1?.copyWith(
                            fontWeight: FontWeight.w400,
                            height: 1.52,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 140),

              // >>> Contact Section <<< //
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Send me an email at_devwraithe.com",
                    style: textTheme.headline4,
                  ),
                  const SizedBox(height: 22),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Text(
                            "GitHub",
                            style: textTheme.subtitle1,
                          ),
                          const SizedBox(width: 34),
                          Text(
                            "LinkedIn",
                            style: textTheme.subtitle1,
                          ),
                          const SizedBox(width: 34),
                          Text(
                            "Twitter",
                            style: textTheme.subtitle1,
                          ),
                        ],
                      ),
                      Text(
                        "Designed and built by Ibrahim Ibrahim",
                        style: textTheme.subtitle1,
                      ),
                      Text(
                        "©2022",
                        style: textTheme.subtitle1,
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 38),
            ],
          ),
        ),
      ),
    );
  }
}
