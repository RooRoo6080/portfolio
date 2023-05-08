import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:web_portfolio/pages/home/components/carousel.dart';
import 'package:web_portfolio/pages/home/components/footer.dart';
import 'package:web_portfolio/pages/home/components/android_app_ad.dart';
// import 'package:web_portfolio/pages/home/components/portfolio_stats.dart';
import 'package:web_portfolio/pages/home/components/website_ad.dart';
import 'package:web_portfolio/pages/home/components/projects.dart';
import 'package:web_portfolio/utils/globals.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      body: ListView(
        physics: CustomPageViewScrollPhysics(),
        controller: AdjustableScrollController(60),
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Carousel(),
              SizedBox(
                height: 20.0,
              ),
              IosAppAd(),
              SizedBox(
                height: 70.0,
              ),
              WebsiteAd(),
              SizedBox(
                height: 70.0,
              ),
              Projects(),
              SizedBox(
                height: 20.0,
              ),
              // Padding(
              //   padding: const EdgeInsets.symmetric(vertical: 28.0),
              //   child: PortfolioStats(),
              // ),
              SizedBox(
                height: 20.0,
              ),
              Footer(),
            ],
          ),
        ],
      ),
    );
  }
}

class CustomPageViewScrollPhysics extends BouncingScrollPhysics {
  const CustomPageViewScrollPhysics({ScrollPhysics parent})
      : super(parent: parent);

  @override
  CustomPageViewScrollPhysics applyTo(ScrollPhysics ancestor) {
    return CustomPageViewScrollPhysics(parent: buildParent(ancestor));
  }

  @override
  SpringDescription get spring => const SpringDescription(
        mass: 150,
        stiffness: 100,
        damping: 1,
      );
}

class AdjustableScrollController extends ScrollController {
  AdjustableScrollController([int extraScrollSpeed = 40]) {
    super.addListener(() {
      ScrollDirection scrollDirection = super.position.userScrollDirection;
      if (scrollDirection != ScrollDirection.idle) {
        double scrollEnd = super.offset +
            (scrollDirection == ScrollDirection.reverse
                ? extraScrollSpeed
                : -extraScrollSpeed);
        scrollEnd = min(super.position.maxScrollExtent,
            max(super.position.minScrollExtent, scrollEnd));
        jumpTo(scrollEnd);
      }
    });
  }
}
