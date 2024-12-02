import 'package:flutter/material.dart';
import 'package:test2/otherwidgets/alertlistview.dart';

class DashboardHomeWidget extends StatelessWidget {
  const DashboardHomeWidget({super.key});

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
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 20),
            decoration: BoxDecoration(
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  "Someone's Name",
                  textAlign: TextAlign.center,
                  style: headingstyle,
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(
                      Icons.call,
                      color: Color(0xff44007F),
                    ),
                    Icon(
                      Icons.mail,
                      color: Color(0xff44007F),
                    ),
                    Icon(
                      Icons.message,
                      color: Color(0xff44007F),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
        Expanded(
          flex: 4,
          child: Container(
            margin: EdgeInsets.symmetric(vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 600,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(6),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        spreadRadius: -4,
                        blurRadius: 12,
                      )
                    ],
                  ),
                  child: AlertListview(),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
