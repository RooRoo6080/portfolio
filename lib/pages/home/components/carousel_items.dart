import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:web_portfolio/models/carousel_item_model.dart';
import 'package:web_portfolio/utils/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _urlG = Uri.parse('https://github.com/RooRoo6080');
final Uri _urlYT = Uri.parse('https://www.youtube.com/@rooroo6080');
final Uri _urlL = Uri.parse("https://www.linkedin.com/in/reuel-joseph-377756267/");

List<CarouselItemModel> carouselItems = List.generate(
  5,
  (index) => CarouselItemModel(
    text: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          // SelectableText(
          //   "TITLE",
          //   style: GoogleFonts.oswald(
          //     color: kPrimaryColor,
          //     fontWeight: FontWeight.w900,
          //     fontSize: 16.0,
          //   ),
          // ),
          // SizedBox(
          //   height: 18.0,
          // ),
          SelectableText(
            "REUEL\nJOSEPH",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontSize: 40.0,
              fontWeight: FontWeight.w900,
              height: 1.3,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          SelectableText(
            "A passionate student programmer, engineer,\ngraphic designer, and more!",
            style: TextStyle(
              color: kCaptionColor,
              fontSize: 15.0,
              height: 1.0,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.github,
                  color: Colors.white,
                ),
                onPressed: () {
                  launchUrl(_urlG);
                },
              ),
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.linkedin,
                  color: Colors.white,
                ),
                onPressed: () {
                  launchUrl(_urlL);
                },
              ),
              IconButton(
                icon: Icon(
                  FontAwesomeIcons.youtube,
                  color: Colors.white,
                ),
                onPressed: () {
                  launchUrl(_urlYT);
                },
              ),
            ],
          ),
        ],
      ),
    ),
    image: Center(
      child: Column(
        children: [
          Image.asset(
            "assets/person.png",
            width: 200,
          ),
          SizedBox(height: 10),
          SelectableText(
            "ABOUT ME",
            style: GoogleFonts.oswald(
              color: Colors.white,
              fontWeight: FontWeight.w900,
              height: 1.3,
              fontSize: 35.0,
            ),
          ),
          SizedBox(height: 10),
          SelectableText(
            "Hi! I'm Reuel, a student at Bellarmine College Preparatory.\nI love programming unique apps in my free time alongisde my other hobbies. I've built a mobile app (Trailblazer) that won a hackathon with nearly 900 participants. Jumping on the AI trend much earlier than many, I built a few GPT-3 based voice assistant and chatbot programs before ChatGPT was even released. Later, I used this knowledge to make a browser extension that has over 300 installs (SearchGPT).\nAside from programming, I'm on the leadership team of my school's combat robotics club. There, I lead peers through the process of designing and creating a 3lb combat robot. I'm also an organizer of our public event which draws competitors from all over California.",
            style: TextStyle(
              color: kCaptionColor,
              height: 1.5,
              fontSize: 15.0,
            ),
          ),
        ],
      ),
    ),
  ),
);
