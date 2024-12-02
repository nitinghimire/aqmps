import 'package:flutter/material.dart';
import 'package:test2/otherwidgets/alertlistview.dart';
import 'package:test2/otherwidgets/simplecard.dart';

class Alerts extends StatefulWidget {
  const Alerts({super.key});

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
  State<Alerts> createState() => _AlertsState();
}

class _AlertsState extends State<Alerts> {
  final alertsList =
      List<String>.generate(5, (i) => 'Something Happened Oh no! ${i + 1}');
  final alertsHistoryList = List<String>.generate(
      5, (i) => 'Something Happened Oh no history! ${i + 1}');

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 0,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Manage Alerts",
                    style: Alerts.headingstyle,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "You just have to be alert and ready to act",
                    style: Alerts.unselectedparagraphstyle,
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 0,
            child: Container(
              height: 400,
              width: 700,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.rectangle,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.15),
                      spreadRadius: -4,
                      blurRadius: 12,
                    )
                  ]),
              margin: EdgeInsets.symmetric(horizontal: 100),
              child: DefaultTabController(
                  animationDuration: Duration(milliseconds: 0),
                  length: 2,
                  child: Container(
                    color: Color.fromARGB(255, 255, 255, 255),
                    margin: EdgeInsets.fromLTRB(27, 0, 100, 0),
                    child: Scaffold(
                      backgroundColor: Color.fromARGB(255, 255, 255, 255),
                      appBar: AppBar(
                        // automaticallyImplyLeading: false,
                        elevation: 0,
                        backgroundColor: Color.fromARGB(255, 255, 255, 255),
                        toolbarHeight: 0,
                        bottom: TabBar(
                          padding: EdgeInsets.zero,
                          dividerColor: Colors.transparent,
                          tabAlignment: TabAlignment.start,
                          isScrollable: true,
                          unselectedLabelStyle: Alerts.unselectedparagraphstyle,
                          labelStyle: Alerts.paragraphstyle,
                          automaticIndicatorColorAdjustment: false,
                          indicatorColor: Colors.transparent,
                          tabs: <Widget>[
                            Tab(
                              text: "Alerts",
                            ),
                            Tab(
                              text: "Alert History",
                            ),
                          ],
                        ),
                      ),
                      body: TabBarView(
                        // controller: ,
                        // physics: ,
                        children: <Widget>[
                          ListView.separated(
                              separatorBuilder: (context, index) => SizedBox(
                                    height: 20,
                                  ),
                              itemCount: alertsList.length,
                              itemBuilder: (context, index) {
                                final item = alertsList[index];
                                return Container(
                                  margin: EdgeInsets.symmetric(horizontal: 50),
                                  decoration: BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 0.2,
                                      )),
                                  child: Dismissible(
                                    key: Key(item),
                                    background: Container(
                                      color: Color.fromARGB(166, 59, 0, 110),
                                    ),
                                    child: ListTile(
                                      dense: false,
                                      title: Text(item),
                                      subtitle: Text(item),
                                      trailing: GestureDetector(
                                        onTap: () {
                                          setState(() {
                                            alertsList.removeAt(index);
                                          });
                                        },
                                        child: Container(
                                          // width: 50,
                                          // height: 50,
                                          decoration: BoxDecoration(
                                            shape: BoxShape.rectangle,
                                            border: Border.all(
                                              color: Colors.grey,
                                              width: 0.2,
                                            ),
                                          ),
                                          padding: EdgeInsets.all(10),
                                          child: Icon(
                                            Icons.close,
                                            color:
                                                Color.fromARGB(166, 59, 0, 110),
                                          ),
                                        ),
                                      ),
                                    ),
                                    onDismissed: (direction) {
                                      setState(() {
                                        alertsList.removeAt(index);
                                      });

                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(SnackBar(
                                        content: Text(item),
                                        duration: Duration(milliseconds: 300),
                                      ));
                                    },
                                  ),
                                );
                              }),
                          ListView.builder(
                              itemCount: alertsHistoryList.length,
                              itemBuilder: (context, index) {
                                final item = alertsHistoryList[index];
                                return Dismissible(
                                    key: Key(item),
                                    child: ListTile(
                                      title: Text(item),
                                      subtitle: Text(item),
                                    ));
                              })
                        ],
                      ),
                    ),
                  )),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          AlertListview(),
          // Expanded(
          //   flex: 0,
          //   child: Container(
          //     color: Colors.white,
          //     alignment: Alignment.center,
          //     margin: EdgeInsets.fromLTRB(30, 0, 30, 0),
          //     child: Column(
          //       mainAxisAlignment: MainAxisAlignment.start,
          //       crossAxisAlignment: CrossAxisAlignment.center,
          //       children: [
          //         AlertListview(),
          //         AlertListview(),
          //       ],
          //     ),
          //   ),
          // )
        ]);
  }
}
