import 'package:flutter/material.dart';
import 'package:web_portfolio/pages/home/components/carousel.dart';
import 'package:web_portfolio/pages/home/components/footer.dart';
import 'package:web_portfolio/pages/home/components/ios_app_ad.dart';
import 'package:web_portfolio/pages/home/components/portfolio_stats.dart';
import 'package:web_portfolio/pages/home/components/website_ad.dart';
import 'package:web_portfolio/pages/home/components/projects.dart';
import 'package:web_portfolio/utils/globals.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: Globals.scaffoldKey,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Carousel(),
            SizedBox(
              height: 20.0,
            ),
            WebsiteAd(),
            SizedBox(
              height: 70.0,
            ),
            IosAppAd(),
            SizedBox(
              height: 70.0,
            ),
            Projects(),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 28.0),
              child: PortfolioStats(),
            ),
            SizedBox(
              height: 20.0,
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
