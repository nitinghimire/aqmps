import 'package:flutter/material.dart';
import 'package:test2/otherwidgets/simplecard.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});
  static const headingstyle = TextStyle(
      color: Color.fromRGBO(0, 0, 0, 1),
      fontSize: 36,
      fontWeight: FontWeight.w800,
      fontVariations: [FontVariation("wght", 800)]);

  static const paragraphstyle = TextStyle(
      color: Color.fromRGBO(0, 0, 0, 1),
      fontSize: 15,
      fontWeight: FontWeight.normal,
      fontVariations: [FontVariation("wght", 400)]);

  static const unselectedparagraphstyle = TextStyle(
      color: Color.fromRGBO(143, 143, 143, 1),
      fontSize: 15,
      fontWeight: FontWeight.normal,
      fontVariations: [FontVariation("wght", 400)]);
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        animationDuration: Duration(milliseconds: 0),
        length: 2,
        child: Container(
          color: Color(0xffEDE8F1),
          margin: EdgeInsets.symmetric(vertical: 27, horizontal: 27),
          child: Scaffold(
            backgroundColor: Color(0xffEDE8F1),
            appBar: AppBar(
              // automaticallyImplyLeading: false,
              elevation: 0,
              backgroundColor: Color(0xffEDE8F1),
              title: Text(
                "Account Settings",
                style: headingstyle,
              ),
              bottom: TabBar(
                tabAlignment: TabAlignment.start,
                isScrollable: true,
                unselectedLabelStyle: unselectedparagraphstyle,
                labelStyle: paragraphstyle,
                automaticIndicatorColorAdjustment: false,
                indicatorColor: Colors.transparent,
                tabs: <Widget>[
                  Tab(
                    text: "General Settings",
                  ),
                  Tab(
                    text: "Other Settings",
                  ),
                ],
              ),
            ),
            body: TabBarView(
              // controller: ,
              // physics: ,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        SimpleCard(
                          width: 720,
                          height: 280,
                          shadow: true,
                          heading: "Profile Details",
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Username",
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800,
                                        fontVariations: [
                                          FontVariation("wght", 400)
                                        ]),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "somerandomusername",
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        fontVariations: [
                                          FontVariation("wght", 400)
                                        ]),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 200,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "Email",
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontSize: 14,
                                        fontWeight: FontWeight.w800,
                                        fontVariations: [
                                          FontVariation("wght", 400)
                                        ]),
                                  ),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  Text(
                                    "my4thusername@gmail.com",
                                    style: TextStyle(
                                        color: Color.fromRGBO(0, 0, 0, 1),
                                        fontSize: 12,
                                        fontWeight: FontWeight.w300,
                                        fontVariations: [
                                          FontVariation("wght", 400)
                                        ]),
                                  )
                                ],
                              )
                            ],
                          ),
                          text: null,
                          button: null,
                        ),
                        SimpleCard(
                          width: 720,
                          height: 173,
                          shadow: true,
                          heading: "Something Else",
                          child: null,
                          text:
                              "Bla bla bla bla something something something Bla bla bla bla something something something Bla bla bla bla something something something",
                          button: "Do Something else",
                          sizedBoxWidth: 400,
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 30,
                        ),
                        SimpleCard(
                          width: 300,
                          height: 230,
                          shadow: true,
                          heading: "Change Password",
                          child: null,
                          text: "Change your possword or something",
                          button: "Change Password",
                          sizedBoxHeight: 50,
                        ),
                        SimpleCard(
                          width: 300,
                          height: 230,
                          shadow: true,
                          heading: "Close Account",
                          child: null,
                          text: "Close your account or something Else",
                          button: "Close Account",
                          sizedBoxHeight: 50,
                        ),
                      ],
                    ),
                  ],
                ),
                Text("data2"),
              ],
            ),
          ),
        ));
  }
}
