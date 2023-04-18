import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_wrapper.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

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
                        Text(
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
                        Text(
                          "This is a random text about the project, I should have used the regular lorem ipsum text, but I am too lazy to search for that. This should be long enough",
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
                  Expanded(
                    flex: constraints.maxWidth > 720.0 ? 1 : 0,
                    child: Column(
                      children: [
                        Row(
                          children: [
                          ],
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 25.0,
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
