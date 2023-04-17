import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:web_portfolio/utils/screen_helper.dart';

class SkillSection extends StatelessWidget {
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
        builder: (BuildContext context, BoxConstraints constraints) {
          return ResponsiveWrapper(
            maxWidth: width,
            minWidth: width,
            child: Flex(
              direction: ScreenHelper.isMobile(context)
                  ? Axis.vertical
                  : Axis.horizontal,
              children: [
                Expanded(
                  flex: ScreenHelper.isMobile(context) ? 0 : 4,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "SKILLS",
                        style: GoogleFonts.oswald(
                          color: Colors.white,
                          fontWeight: FontWeight.w900,
                          fontSize: 28.0,
                          height: 1.3,
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        "lorem ipsum dolor sit amet",
                        style: TextStyle(
                          color: kCaptionColor,
                          height: 1.5,
                          fontSize: 16.0,
                        ),
                      ),
                      SizedBox(
                        height: 15.0,
                      ),
                      Column(
                        children: [
                          Card(
                            elevation: 0,
                            color: kPrimaryColor,
                            child: const SizedBox(
                              width: 100,
                              height: 50,
                              child: Center(
                                child: Text(
                                  'Flutter',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w200
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 0,
                            color: kPrimaryColor,
                            child: const SizedBox(
                              width: 100,
                              height: 50,
                              child: Center(
                                child: Text(
                                  'Java',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w200
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 0,
                            color: kPrimaryColor,
                            child: const SizedBox(
                              width: 100,
                              height: 50,
                              child: Center(
                                child: Text(
                                  'Python',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w200
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 0,
                            color: kPrimaryColor,
                            child: const SizedBox(
                              width: 100,
                              height: 50,
                              child: Center(
                                child: Text(
                                  'Android',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w200
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Card(
                            elevation: 0,
                            color: kPrimaryColor,
                            child: const SizedBox(
                              width: 100,
                              height: 50,
                              child: Center(
                                child: Text(
                                  'CAD',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontWeight: FontWeight.w200
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
