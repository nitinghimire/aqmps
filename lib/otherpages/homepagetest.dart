// ignore_for_file: prefer_const_constructors
import 'package:mailto/mailto.dart';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:test2/model/homemodel.dart';
import 'package:test2/otherpages/login.dart';
import 'package:test2/otherpages/signup.dart';
import 'package:url_launcher/url_launcher.dart';

class Homepagetest extends StatefulWidget {
  const Homepagetest({super.key});

  static const aqmpstxtstyle = TextStyle(
      color: Color.fromRGBO(255, 255, 255, 1),
      fontSize: 16,
      fontWeight: FontWeight.bold,
      fontVariations: [FontVariation("wght", 800)]);

  static const normaltxtstyle = TextStyle(
      color: Colors.white,
      fontSize: 13,
      fontWeight: FontWeight.w200,
      fontVariations: [FontVariation("wght", 200)]);

  static const heroheadingstyle = TextStyle(
      color: Color.fromRGBO(255, 255, 255, 1),
      fontSize: 40,
      fontWeight: FontWeight.w800,
      fontVariations: [FontVariation("wght", 800)]);

  static const headingstyle = TextStyle(
      color: Color.fromRGBO(255, 255, 255, 1),
      fontSize: 36,
      fontWeight: FontWeight.w800,
      fontVariations: [FontVariation("wght", 800)]);

  static const paragraphstyle = TextStyle(
      color: Color.fromRGBO(255, 255, 255, 1),
      fontSize: 15,
      fontWeight: FontWeight.normal,
      fontVariations: [FontVariation("wght", 400)]);

  static const footerheadingstyle = TextStyle(
      color: Color.fromRGBO(255, 255, 255, 1),
      fontSize: 20,
      fontWeight: FontWeight.w600,
      fontVariations: [FontVariation("wght", 600)]);

  static const footerbodystyle = TextStyle(
      color: Color.fromRGBO(255, 255, 255, 1),
      fontSize: 15,
      fontWeight: FontWeight.w100,
      fontVariations: [FontVariation("wght", 100)]);

  @override
  State<Homepagetest> createState() => _HomepagetestState();
}

class _HomepagetestState extends State<Homepagetest>
    with TickerProviderStateMixin {
  List<HomemodelBody> body = [];

  late final TabController _tabController;
  final scrollcontroller = ScrollController();
  bool hidefooter = true;

  void _getbody() {
    body = HomemodelBody.getHomeBody();
  }

  scrollListener() {
    if (scrollcontroller.position.pixels ==
        scrollcontroller.position.maxScrollExtent) {
      setState(() {
        hidefooter = false;
      });
    } else {
      setState(() {
        hidefooter = true;
      });
    }
  }

  @override
  void initState() {
    super.initState();
    scrollcontroller.addListener(scrollListener);
    _tabController = TabController(length: 5, vsync: this);
    _getbody();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xff1C0134),
      padding: const EdgeInsets.only(top: 51),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff1C0134),
          leadingWidth: 261,
          leading: const LeadingWidget(aqmpstxt: Homepagetest.aqmpstxtstyle),
          title: TabBarSection(
            normaltxt: Homepagetest.normaltxtstyle,
            tabcontroller: _tabController,
          ),
          actions: [
            Padding(
              padding: EdgeInsets.only(right: 141),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    child: Text(
                      style: Homepagetest.normaltxtstyle,
                      "Signup",
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Signup()));
                    },
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  OutlinedButton(
                    child: Text(
                      style: Homepagetest.normaltxtstyle,
                      "Login in",
                    ),
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Login()));
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
        body: TabBarView(
            viewportFraction: 1,
            controller: _tabController,
            children: [
              ListView.builder(
                // separatorBuilder: (context, index) => Container(
                //   height: 100,
                //   child: blurSpot(
                //     blurspotcolor: Colors.transparent,
                //     leftTextPositioning: body[index].leftTextPositioning,
                //     overlay: SizedBox(
                //       height: 20,
                //     ),
                //   ),
                // ),
                itemCount: body.length,
                controller: scrollcontroller,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  if (index == 0) {
                    return hero(context, index, body[index].blurcolor);
                  } else {
                    return bodylistview(context, index);
                  }
                },
              ),
              Text("products"),
              Text("products"),
              Text("products"),
              Text("products"),
            ]),
        bottomNavigationBar:
            // BottomAppBar(
            //   height: 200,
            //   padding: EdgeInsets.only(top: 0),
            //   color: Colors.white,
            //   child:
            Offstage(
          offstage: hidefooter,
          child: const footer(),
        ),
      ),

      // ),
    );
  }

  Container bodylistview(BuildContext context, int index) {
    return Container(
        height: MediaQuery.sizeOf(context).height * 0.8,
        width: MediaQuery.sizeOf(context).width,
        child: blurSpot(
          leftTextPositioning: body[index].leftTextPositioning,
          blurspotcolor: body[index].blurcolor,
          overlay: (body[index].leftTextPositioning == true)
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: EdgeInsets.only(left: 200, right: 75),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(body[index].heading,
                                style: Homepagetest.headingstyle),
                            SizedBox(
                              height: 35,
                            ),
                            Text(body[index].paragraph,
                                style: Homepagetest.paragraphstyle),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 5,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(right: 141, top: 75),
                              child: Image.asset(
                                  height: 400,
                                  width: 400,
                                  body[index].imagePath),
                            ),
                          ]),
                    ),
                  ],
                )
              : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      flex: 5,
                      child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 141, top: 75),
                              child: Image.asset(
                                  height: 400,
                                  width: 400,
                                  body[index].imagePath),
                            ),
                          ]),
                    ),
                    Expanded(
                      flex: 5,
                      child: Padding(
                        padding: EdgeInsets.only(right: 200, left: 75),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(body[index].heading,
                                style: Homepagetest.headingstyle),
                            SizedBox(
                              height: 35,
                            ),
                            Text(body[index].paragraph,
                                style: Homepagetest.paragraphstyle),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
        ));
  }

  Container hero(BuildContext context, int index, Color blurspotcolor) {
    return Container(
        height: MediaQuery.sizeOf(context).height * 0.89,
        width: MediaQuery.sizeOf(context).width,
        decoration: BoxDecoration(
          color: Colors.white,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color.fromARGB(255, 13, 0, 23),
                Color.fromARGB(255, 76, 0, 143),
              ]),
        ),
        child: blurSpot(
          leftTextPositioning: true,
          blurspotcolor: blurspotcolor,
          overlay: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 5,
                child: Padding(
                  padding: EdgeInsets.only(left: 200, right: 75),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(body[index].heading,
                          style: Homepagetest.heroheadingstyle),
                      SizedBox(
                        height: 50,
                      ),
                      Text(body[index].paragraph,
                          style: Homepagetest.paragraphstyle),
                      SizedBox(
                        height: 50,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) => const Signup(),
                                ),
                              );
                            },
                            child: Container(
                                margin: EdgeInsets.all(30),
                                decoration: BoxDecoration(
                                  color: Color(0xff447A1C),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(41)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Try it For Free",
                                    style: Homepagetest.normaltxtstyle,
                                  ),
                                )),
                          ),
                          GestureDetector(
                            onTap: () async {
                              final mailtoLink = Mailto(
                                to: ['my4thusername@gmail.com'],
                                subject: 'mailto example subject',
                                body: 'mailto example body',
                              );
                              try {
                                await launchUrl(Uri.parse('$mailtoLink'));
                              } catch (e) {
                                print("Something went wrong");
                              }
                            },
                            child: Container(
                                margin: EdgeInsets.all(30),
                                decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(41)),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    "Contact Us",
                                    style: Homepagetest.normaltxtstyle,
                                  ),
                                )),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 5,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 141, top: 120),
                        child: Image.asset("assets/test.jpg"),
                      ),
                    ]),
              ),
            ],
          ),
        ));
  }
}

class footer extends StatelessWidget {
  const footer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(
        // color: Colors.white,
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.center,
            colors: [
              Color.fromARGB(87, 76, 0, 143),
              Color.fromARGB(255, 13, 0, 23),
            ]),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 141),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "About Us",
                    style: Homepagetest.footerheadingstyle,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "Android App",
                    style: Homepagetest.footerbodystyle,
                  ),
                  Text(
                    "iOS App",
                    style: Homepagetest.footerbodystyle,
                  ),
                  Text(
                    "Cloud",
                    style: Homepagetest.footerbodystyle,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Help?",
                    style: Homepagetest.footerheadingstyle,
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "FAQ",
                    style: Homepagetest.footerbodystyle,
                  ),
                  Text(
                    "Terms and Condition",
                    style: Homepagetest.footerbodystyle,
                  ),
                  Text(
                    "Support",
                    style: Homepagetest.footerbodystyle,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: Text(
                      "Follow Us",
                      style: Homepagetest.footerheadingstyle,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          "assets/icons/Facebook.png",
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          "assets/icons/TwitterX.png",
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          "assets/icons/Instagram.png",
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          "assets/icons/LinkedIn.png",
                        ),
                      ),
                      SizedBox(
                        height: 40,
                        width: 40,
                        child: Image.asset(
                          "assets/icons/Discord New.png",
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class blurSpot extends StatelessWidget {
  const blurSpot({
    super.key,
    required this.blurspotcolor,
    required this.overlay,
    required this.leftTextPositioning,
  });
  final Color blurspotcolor;
  final Widget? overlay;
  final bool leftTextPositioning;
  @override
  Widget build(BuildContext context) {
    return Blur(
      blur: 170,
      colorOpacity: 0,
      overlay: overlay,
      // blurColor: Colors.transparent,
      blurColor: Colors.transparent,
      child: Container(
        alignment: Alignment.bottomCenter,
        margin: (leftTextPositioning == true)
            ? EdgeInsets.only(
                left: (MediaQuery.sizeOf(context).width * 0.8 as double))
            : EdgeInsets.only(
                right: (MediaQuery.sizeOf(context).width * 0.7 as double)),
        height: MediaQuery.sizeOf(context).height * 0.69,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: blurspotcolor,
          // backgroundBlendMode: BlendMode.src,
        ),
      ),
    );
  }
}

class LeadingWidget extends StatelessWidget {
  const LeadingWidget({
    super.key,
    required this.aqmpstxt,
  });

  final TextStyle aqmpstxt;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Text(
          "AQMPS",
          style: aqmpstxt,
        ),
      ],
    ));
  }
}

class TabBarSection extends StatelessWidget {
  const TabBarSection({
    super.key,
    required this.normaltxt,
    required this.tabcontroller,
  });

  final TextStyle normaltxt;
  final TabController tabcontroller;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(60, 51, 141, 51),
      child: TabBar(
        controller: tabcontroller,
        automaticIndicatorColorAdjustment: false,
        indicatorColor: const Color.fromARGB(255, 89, 0, 162),
        dividerColor: Colors.transparent,
        tabs: [
          Tab(
            child: Navbartab(
              normaltxt: normaltxt,
              text: "Home",
            ),
          ),
          Tab(
            child: Navbartab(
              normaltxt: normaltxt,
              text: "Products",
            ),
          ),
          Tab(
            child: Navbartab(
              normaltxt: normaltxt,
              text: "Services",
            ),
          ),
          Tab(
            child: Navbartab(
              normaltxt: normaltxt,
              text: "Resources",
            ),
          ),
          Tab(
            child: Navbartab(
              normaltxt: normaltxt,
              text: "Usecases",
            ),
          ),
        ],
      ),
    );
  }
}

class Navbartab extends StatelessWidget {
  const Navbartab({
    super.key,
    required this.normaltxt,
    required this.text,
  });

  final TextStyle normaltxt;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: normaltxt,
        )
      ],
    );
  }
}
