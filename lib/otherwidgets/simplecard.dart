import 'package:flutter/material.dart';

class SimpleCard extends StatelessWidget {
  static const cardheading = TextStyle(
      color: Color.fromRGBO(0, 0, 0, 1),
      fontSize: 16,
      fontWeight: FontWeight.w700,
      fontVariations: [FontVariation("wght", 400)]);

  static const cardbody = TextStyle(
      color: Color.fromRGBO(134, 134, 134, 1),
      fontSize: 14,
      fontWeight: FontWeight.w300,
      fontVariations: [FontVariation("wght", 300)]);

  static const cardbodybutton = TextStyle(
      color: Color(0xff28004A),
      fontSize: 14,
      fontWeight: FontWeight.w600,
      fontVariations: [FontVariation("wght", 300)]);

  final double height;
  final double width;
  final bool shadow;
  final String heading;
  final Widget? child;
  final String? text;
  final String? button;
  double? sizedBoxWidth = 0;
  double? sizedBoxHeight = 0;

  SimpleCard({
    super.key,
    required this.width,
    required this.height,
    required this.shadow,
    required this.heading,
    required this.child,
    required this.text,
    required this.button,
    this.sizedBoxHeight,
    this.sizedBoxWidth,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      // alignment: Alignment.center,
      margin: EdgeInsets.fromLTRB(10, 10, 30, 30),
      padding: EdgeInsets.all(20),
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        shape: BoxShape.rectangle,
        boxShadow: shadow
            ? [
                BoxShadow(
                  color: Colors.black.withOpacity(0.15),
                  spreadRadius: -4,
                  blurRadius: 12,
                )
              ]
            : null,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            heading,
            style: cardheading,
            textAlign: TextAlign.start,
          ),
          SizedBox(
            height: 15,
          ),
          child ?? SizedBox(),
          Text(
            text ?? "",
            style: cardbody,
            textAlign: TextAlign.start,
          ),
          text == null
              ? SizedBox(
                  height: 0,
                )
              : SizedBox(
                  height: 15,
                ),
          sizedBoxWidth == null && sizedBoxHeight != null
              ? SizedBox(
                  height: sizedBoxHeight,
                )
              : SizedBox(
                  height: 0,
                ),
          text == null
              ? SizedBox(
                  height: 0,
                )
              : GestureDetector(
                  onTap: () {},
                  child: Row(children: [
                    sizedBoxHeight == null && sizedBoxWidth != null
                        ? SizedBox(
                            width: sizedBoxWidth,
                          )
                        : SizedBox(
                            width: 0,
                          ),
                    Container(
                      width: 250,
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric(vertical: 10),
                      decoration: BoxDecoration(
                        color: Color(0xffF1E2FF),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Text(
                        button ?? "",
                        style: cardbodybutton,
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ]),
                ),
        ],
      ),
    );
  }
}
