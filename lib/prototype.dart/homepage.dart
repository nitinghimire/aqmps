import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  static const aqmpstxt = TextStyle(
      color: Colors.white,
      fontSize: 13,
      fontWeight: FontWeight.bold,
      fontVariations: [FontVariation("wght", 800)]);

  static const normaltxt = TextStyle(
      color: Colors.white,
      fontSize: 13,
      fontWeight: FontWeight.w200,
      fontVariations: [FontVariation("wght", 200)]);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: const Color(0xff1C0134),
      appBar: navBar(),
    );
  }

  AppBar navBar() {
    return AppBar(
      backgroundColor: const Color(0xff1C0134),
      elevation: 0,
      title: Container(
        margin: EdgeInsets.only(left: 100, right: 100),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Padding(
              padding: EdgeInsets.only(right: 80),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "AQMPS",
                    style: aqmpstxt,
                  )
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Products",
                  style: normaltxt,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Services",
                  style: normaltxt,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Resources",
                  style: normaltxt,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Use Cases",
                  style: normaltxt,
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Login",
                    style: normaltxt,
                  ),
                )
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Text(
                    "Signup",
                    style: normaltxt,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
