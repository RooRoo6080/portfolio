import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';
import 'package:url_launcher/url_launcher.dart';

class Projects extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ScreenHelper(
        desktop: _buildUi(kDesktopMaxWidth),
        tablet: _buildUi(kTabletMaxWidth),
        mobile: _buildUi(getMobileMaxWidth(context)),
      ),
    );
  }

  Widget _buildUi(double width) {
    return Center(
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ResponsiveWrapper(
            maxWidth: width,
            minWidth: width,
            defaultScale: false,
            child: Container(
              child: Flex(
                direction: constraints.maxWidth > 720
                    ? Axis.horizontal
                    : Axis.vertical,
                children: [
                  Expanded(
                    flex: constraints.maxWidth > 720.0 ? 1 : 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectableText(
                          "OTHER\nPROJECTS",
                          style: GoogleFonts.oswald(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            height: 1.3,
                            fontSize: 35.0,
                          ),
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        SelectableText(
                          "Take a look at a few of my other projects, from programming to engineering and more.",
                          style: TextStyle(
                            color: kCaptionColor,
                            height: 1.5,
                            fontSize: 15.0,
                          ),
                        ),
                        SizedBox(
                          height: 70.0,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Expanded(
                    flex: constraints.maxWidth > 720.0 ? 1 : 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            _popup(
                              context,
                              "assets/gptvoiceassistant.png",
                              "WINDOWS APP",
                              "GPT VOICE ASSISTANT",
                              "Tired of Siri? Get an enhanced voice assistant through the power of OpenAI's GPT-3 models and Google's voice regonition at your fingertips.",
                              [true, true],
                              "WATCH IT",
                              "VIEW CODE",
                              Uri.parse("https://youtu.be/NkIl-Nfrgys"),
                              Uri.parse(
                                  "https://github.com/RooRoo6080/voice-assistant"),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kPrimaryColor,
                            padding: EdgeInsets.all(30),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            "GPT VOICE ASSISTANT",
                            style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: () {
                            _popup(
                              context,
                              "assets/androidvoiceassistant.jpg",
                              "ANDROID APP",
                              "ANDROID VOICE ASSISTANT",
                              "An OpenAI based Android Voice Assistant made during Tri-Valley Hacks. This integrates Google's speech to text, OpenAI's GPT-3 text completion model, and Android's text to speech into a fully-functional chatbot on Android.",
                              [true, false],
                              "VIEW CODE",
                              "",
                              Uri.parse(
                                  "https://github.com/RooRoo6080/android-voice-assistant"),
                              Uri.parse(""),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kPrimaryColor,
                            padding: EdgeInsets.all(30),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            "ANDROID VOICE ASSISTANT",
                            style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: () {
                            _popup(
                              context,
                              "assets/roobot.png",
                              "DISCORD BOT",
                              "ROOBOT",
                              "A python-based Discord bot. Play games from Tic-Tac-Toe to Hangman and 2048, as well as the popular typing speed test. It also includes a secret feature: an OpenAI-powered chat bot",
                              [true, false],
                              "VIEW CODE",
                              "",
                              Uri.parse(
                                  "https://github.com/RooRoo6080/roobot-discord-bot"),
                              Uri.parse(""),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kPrimaryColor,
                            padding: EdgeInsets.all(30),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            "ROOBOT - DISCORD BOT",
                            style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: () {
                            _popup(
                              context,
                              "assets/ttt.png",
                              "WEBSITE",
                              "TIC-TAC-TOE",
                              "A simple project idea I used while I was learning Flutter. It's tough to beat!",
                              [true, true],
                              "TRY IT",
                              "VIEW CODE",
                              Uri.parse(
                                  "https://tictactoe-rooroo6080.vercel.app/#/"),
                              Uri.parse(
                                  "https://github.com/RooRoo6080/tic-tac-toe"),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kPrimaryColor,
                            padding: EdgeInsets.all(30),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            "TIC-TAC-TOE",
                            style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: () {
                            _popup(
                              context,
                              "assets/hurricane.jpg",
                              "COMBAT ROBOT",
                              "HURRICANE - 1LB BATTLEBOT",
                              "My first engineering project and combat robot. Made from scratch with the tools in my school's makerspace, this robot went undefeated in every public match.",
                              [true, false],
                              "WATCH IT",
                              "",
                              Uri.parse(
                                  "https://www.youtube.com/watch?v=eOxzHmS4mRg"),
                              Uri.parse(""),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kPrimaryColor,
                            padding: EdgeInsets.all(30),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            "ANTWEIGHT COMBAT ROBOT",
                            style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: () {
                            _popup(
                              context,
                              "assets/bellicopter.jpg",
                              "COMBAT ROBOT",
                              "BELLICOPTER - 3LB BATTLEBOT",
                              "I captained a team of 5 students to build this destructive combat robot. Equipped with a 11oz overhead blade spinning at a theoretical 14000 RPM, this robot is dangerously fun! It will compete in the BCRC's Bell Brawls competition on May 7th, 2023.",
                              [false, false],
                              "WATCH IT",
                              "",
                              Uri.parse(
                                  "https://www.youtube.com/watch?v=eOxzHmS4mRg"),
                              Uri.parse(""),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kPrimaryColor,
                            padding: EdgeInsets.all(30),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            "BEETLEWEIGHT COMBAT ROBOT",
                            style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: () {
                            _popup(
                              context,
                              "assets/infographic.png",
                              "GRAPHIC DESIGN INFOGRAPHIC",
                              "HISTORY OF FORMULA 1 - INFOGRAPHIC",
                              "A mobile-focused scrolling infographic made using Adobe Illustrator.\nDisplayed in the Bellarmine College Prep art gallery",
                              [true, false],
                              "VIEW FULL",
                              "",
                              Uri.parse(
                                  "https://drive.google.com/file/d/12cEM2c_Q0K2DGjS6gcufq2JluFva7ZSX/view?usp=sharing"),
                              Uri.parse(""),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kPrimaryColor,
                            padding: EdgeInsets.all(30),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            "HISTORY OF F1 INFOGRAPHIC",
                            style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                        ElevatedButton(
                          onPressed: () {
                            _popup(
                              context,
                              "assets/ar.jpg",
                              "AUGMENTED REALITY",
                              "F1 OVER TIME - AR",
                              "An augmented reality project that showcases the speeds of Formula 1 cars over time: from 1950 to 2022.",
                              [true, false],
                              "TRY IT",
                              "",
                              Uri.parse(
                                  "https://ar.adobe.com/landing/?id=aHR0cHM6Ly9jYy1hcGktY3AuYWRvYmUuaW8vYXBpL3YyL2Flcm8vYXNzZXRzL2NiNzczNjBhLTE2YmYtNDdhZi04OTkyLTJlNGY3YzNkOTExNz9hcGlfa2V5PUFlcm9fQ29udGVudF9TZXJ2aWNlMQ%3D%3D&platform=desktop&version=3&_branch_match_id=908459395939797958&_branch_referrer=H4sIAAAAAAAAA8soKSkottLXT0zJT0pNTC3K10ssKNDLyczL1i8q8Q1P9glydS9LAgCoeyq%2BJgAAAA%3D%3D"),
                              Uri.parse(""),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: kPrimaryColor,
                            padding: EdgeInsets.all(30),
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                            ),
                          ),
                          child: Text(
                            "F1 OVER TIME - AR",
                            style: GoogleFonts.oswald(
                              color: Colors.white,
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

void _popup(
    context,
    String imagePath,
    String heading,
    String title,
    String description,
    List<bool> buttons,
    String b1,
    String b2,
    Uri l1,
    Uri l2) {
  showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return Padding(
          padding: const EdgeInsets.all(20.0),
          child: Center(
            child: LayoutBuilder(
              builder: (context, constraints) {
                return ResponsiveWrapper(
                  defaultScale: false,
                  child: Padding(
                    padding:
                        EdgeInsets.all(constraints.maxWidth > 720 ? 100 : 20),
                    child: Container(
                      decoration: BoxDecoration(
                        color: kBackgroundColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                IconButton(
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                  },
                                  icon: Icon(Icons.close),
                                  color: Colors.white,
                                )
                              ],
                            ),
                            Flex(
                              direction: constraints.maxWidth > 720
                                  ? Axis.horizontal
                                  : Axis.vertical,
                              children: [
                                Expanded(
                                  flex: constraints.maxWidth > 720.0 ? 1 : 0,
                                  child: Image.asset(
                                    imagePath,
                                    width: constraints.maxWidth > 720.0
                                        ? null
                                        : 270.0,
                                    height: constraints.maxWidth > 720.0
                                        ? 800
                                        : null,
                                  ),
                                ),
                                constraints.maxWidth > 720
                                    ? SizedBox(
                                        width: 20,
                                      )
                                    : SizedBox(
                                        height: 20,
                                      ),
                                Expanded(
                                  flex: constraints.maxWidth > 720.0 ? 1 : 0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      SelectableText(
                                        heading,
                                        style: GoogleFonts.oswald(
                                          color: kPrimaryColor,
                                          fontWeight: FontWeight.w900,
                                          fontSize: 16.0,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 15.0,
                                      ),
                                      SelectableText(
                                        title,
                                        style: GoogleFonts.oswald(
                                          color: Colors.white,
                                          fontWeight: FontWeight.w900,
                                          height: 1.3,
                                          fontSize: 35.0,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.0,
                                      ),
                                      SelectableText(
                                        description,
                                        style: TextStyle(
                                          color: kCaptionColor,
                                          height: 1.5,
                                          fontSize: 15.0,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 25.0,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              buttons[0]
                                                  ? OutlinedButton(
                                                      onPressed: () {
                                                        launchUrl(l1);
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        padding:
                                                            EdgeInsets.all(20),
                                                        foregroundColor:
                                                            kPrimaryColor,
                                                        side: BorderSide(
                                                            color:
                                                                kPrimaryColor),
                                                      ),
                                                      child: Text(
                                                        b1,
                                                        style: TextStyle(
                                                          fontSize: 13.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    )
                                                  : Container(),
                                              SizedBox(
                                                width: 10.0,
                                              ),
                                              buttons[1]
                                                  ? OutlinedButton(
                                                      onPressed: () {
                                                        launchUrl(l2);
                                                      },
                                                      style: ElevatedButton
                                                          .styleFrom(
                                                        padding:
                                                            EdgeInsets.all(20),
                                                        foregroundColor:
                                                            kPrimaryColor,
                                                        side: BorderSide(
                                                            color:
                                                                kPrimaryColor),
                                                      ),
                                                      child: Text(
                                                        b2,
                                                        style: TextStyle(
                                                          fontSize: 13.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    )
                                                  : Container(),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        );
      });
}
