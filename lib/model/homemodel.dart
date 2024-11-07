import 'dart:ui';

class HomemodelBody {
  String imagePath;
  String heading;
  String paragraph;
  bool leftTextPositioning;
  Color blurcolor;

  HomemodelBody(
      {required this.imagePath,
      required this.heading,
      required this.paragraph,
      required this.leftTextPositioning,
      required this.blurcolor});

  static List<HomemodelBody> getHomeBody() {
    List<HomemodelBody> body = [];

    body.add(HomemodelBody(
        imagePath: "assets/randomhero.png",
        heading: "Breathe Easy with Real-Time Air Quality Insights",
        paragraph:
            "Monitor, analyze, and predict air pollution levels effortlessly with our advanced IoT-powered solution. Get accurate data from anywhere, anytime, and make informed decisions for a healthier tomorrow.",
        leftTextPositioning: true,
        blurcolor: Color(0xff9BA83E)));

    body.add(HomemodelBody(
        imagePath: "assets/ui.png",
        heading: "UI/UX",
        paragraph:
            "Seamlessly designed for effortless navigation and clarity, making air quality monitoring a breeze",
        leftTextPositioning: true,
        blurcolor: Color(0xff9BA83E)));

    body.add(HomemodelBody(
        imagePath: "assets/location.png",
        heading: "Location Pinpoint",
        paragraph:
            "Accurately track pollution levels at specific locations with real-time data.",
        leftTextPositioning: false,
        blurcolor: Color.fromARGB(196, 69, 122, 28)));

    body.add(HomemodelBody(
        imagePath: "assets/analytics.png",
        heading: "Analytics",
        paragraph:
            "Gain deeper insights into air quality trends with comprehensive data analytics.",
        leftTextPositioning: true,
        blurcolor: Color(0xffADC2C3)));

    body.add(HomemodelBody(
        imagePath: "assets/ship.png",
        heading: "Shipping",
        paragraph:
            "Fast and secure delivery, ensuring your devices are ready to monitor the air in no time.",
        leftTextPositioning: false,
        blurcolor: Color.fromARGB(106, 175, 214, 124)));

    body.add(HomemodelBody(
        imagePath: "assets/visualization.png",
        heading: "Visualization",
        paragraph:
            "Clear, interactive charts and maps for a better understanding of air pollution data.",
        leftTextPositioning: true,
        blurcolor: Color.fromARGB(205, 175, 214, 124)));

    body.add(HomemodelBody(
        imagePath: "assets/cloud.png",
        heading: "Cloud Usage",
        paragraph:
            "Store, process, and access your air quality data anytime with secure cloud integration ",
        leftTextPositioning: false,
        blurcolor: Color.fromARGB(156, 220, 222, 219)));
    return body;
  }
}
