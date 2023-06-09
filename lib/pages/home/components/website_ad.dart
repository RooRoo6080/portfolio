import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _urlL = Uri.parse('https://github.com/RooRoo6080/search-gpt/blob/main/README.md');
final Uri _urlT = Uri.parse('https://chrome.google.com/webstore/detail/searchgpt/nemhpjoggiokeajmkekkdkapjehpfaff?hl=en&authuser=0');
final Uri _urlC = Uri.parse('https://github.com/RooRoo6080/search-gpt');

class WebsiteAd extends StatelessWidget {
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
                          "CHROME EXTENSION",
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
                          "SEARCHGPT",
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
                          "Integrate OpenAI's GPT-3 model responses to your Google search queries. Get summarized results in seconds by using the power of OpenAI's GPT-3 models to enhance Google searches with artificial intelligence.\n\nFeatured on the Chrome Web Store\nOver 300 installs",
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
                        SizedBox(
                          height: 70.0,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25.0,
                  ),
                  Expanded(
                    flex: constraints.maxWidth > 720.0 ? 1 : 0,
                    child: Image.asset(
                      "assets/searchgpt.png",
                      width: constraints.maxWidth > 720.0 ? null : 350.0,
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
