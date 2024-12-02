import 'package:flutter/material.dart';

class AlertListview extends StatelessWidget {
  const AlertListview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: Colors.white,
      selectedTileColor: Colors.white,
      contentPadding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
      horizontalTitleGap: 30,
      title: Text(
        "Oh no Something happened!",
        style: TextStyle(
            color: Color.fromRGBO(0, 0, 0, 1),
            fontSize: 15,
            fontWeight: FontWeight.w800,
            fontVariations: [FontVariation("wght", 400)]),
      ),
      subtitle: Text(
        "Oh no this is the thing that happened!",
        style: TextStyle(
            color: Color.fromRGBO(156, 156, 156, 1),
            fontSize: 12,
            fontWeight: FontWeight.w200,
            fontVariations: [FontVariation("wght", 400)]),
      ),
      leading: Icon(
        Icons.notifications,
        color: Color(0xff44007F),
      ),
      trailing: GestureDetector(
        onTap: () {},
        child: Container(
          height: 30,
          width: 100,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Color(0xff44007F),
          ),
          child: Padding(
            padding: EdgeInsets.all(0),
            child: Text(
              "Remove",
              style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 1),
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  fontVariations: [FontVariation("wght", 400)]),
            ),
          ),
        ),
      ),
    );
  }
}
