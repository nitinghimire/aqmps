import 'package:flutter/material.dart';
import 'package:test2/otherpages/dashboard.dart';
import 'package:test2/otherpages/homepagetest.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: "Outfit",
          scaffoldBackgroundColor: Color(0xff1C0134),
          tabBarTheme: TabBarTheme(
            indicatorSize: TabBarIndicatorSize.label,
          )),
      home: Dashboard(),
    );
  }
}
