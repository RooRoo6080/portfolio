import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _urlL = Uri.parse(
    'https://github.com/RooRoo6080/trailblazer-andoid-hiking-tracker/blob/main/README.md');
final Uri _urlT = Uri.parse(
    'https://play.google.com/store/apps/details?id=com.rooroo.tracker');
final Uri _urlC = Uri.parse(
    'https://github.com/RooRoo6080/trailblazer-andoid-hiking-tracker');

class IosAppAd extends StatelessWidget {
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
                    child: Image.asset(
                      "assets/trailblazer.png",
                      width: constraints.maxWidth > 720.0 ? null : 350.0,
                    ),
                  ),
                  Expanded(
                    flex: constraints.maxWidth > 720.0 ? 1 : 0,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectableText(
                          "ANDROID APP",
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
                          "TRAILBLAZER\nGPS-LESS TRACKER",
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
                          "Thousands of people go missing in the woods every year. Trailblazer will help guide you back to safety in such a scenario. Once started, it will track your phone's location using no external factors (such as GPS). This means that Trailblazer has you covered, wherever you go. The map created by the app can help you retrace your steps back to safety.\n\nWinner of the 'Funathon' Hackathon",
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
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                ElevatedButton(
                                  onPressed: () {
                                    launchUrl(_urlL);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: kPrimaryColor,
                                    padding: EdgeInsets.all(20),
                                    foregroundColor: Colors.white,
                                  ),
                                  child: Text(
                                    "LEARN MORE",
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                OutlinedButton(
                                  onPressed: () {
                                    launchUrl(_urlT);
                                  },
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.all(20),
                                    foregroundColor: kPrimaryColor,
                                    side: BorderSide(color: kPrimaryColor),
                                  ),
                                  child: Text(
                                    "TRY IT",
                                    style: TextStyle(
                                      fontSize: 13.0,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 10.0,
                            ),
                            OutlinedButton(
                              onPressed: () {
                                launchUrl(_urlC);
                              },
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.all(20),
                                foregroundColor: kPrimaryColor,
                                side: BorderSide(color: kPrimaryColor),
                              ),
                              child: Text(
                                "VIEW CODE",
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
