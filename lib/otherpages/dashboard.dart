import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;
  @override
  void initState() {
    // Scaffold.of(context).openDrawer();
    super.initState();
  }

  void changeDestination(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Expanded(
        child: Row(
          children: <Widget>[
            navigationRailDashboard(),
          ],
        ),
      ),
    );
  }

  NavigationRail navigationRailDashboard() {
    return NavigationRail(
      groupAlignment: 0,
      elevation: 1,
      extended: true,
      useIndicator: true,
      backgroundColor: Color(0xff28004A),
      // minWidth: 100,
      indicatorShape: CircleBorder(eccentricity: 0.6),
      selectedIndex: _selectedIndex,
      selectedIconTheme: IconThemeData(
        size: 30,
        opacity: 0.5,
      ),
      unselectedLabelTextStyle: TextStyle(
          color: Color.fromRGBO(160, 160, 160, 1),
          fontSize: 14,
          fontWeight: FontWeight.w100,
          fontVariations: [FontVariation("wght", 100)]),
      selectedLabelTextStyle: TextStyle(
          color: Color.fromRGBO(255, 255, 255, 1),
          fontSize: 14,
          fontWeight: FontWeight.w100,
          fontVariations: [FontVariation("wght", 100)]),
      indicatorColor: Color.fromARGB(255, 91, 6, 175),
      onDestinationSelected: changeDestination,
      leading: Container(
        alignment: Alignment.topCenter,
        height: 40,
        child: Text(
          "AQMPS",
          style: TextStyle(
              color: Color.fromRGBO(255, 255, 255, 1),
              fontSize: 32,
              fontWeight: FontWeight.w800,
              fontVariations: [FontVariation("wght", 800)]),
        ),
      ),
      destinations: <NavigationRailDestination>[
        NavigationRailDestination(
          padding: EdgeInsets.symmetric(vertical: 6),
          icon: Image.asset(
            "assets/dashboard-icons/Home.png",
          ),
          label: Text(
            "Home",
          ),
        ),
        NavigationRailDestination(
          padding: EdgeInsets.symmetric(vertical: 6),
          icon: Image.asset(
            "assets/dashboard-icons/live.png",
          ),
          label: Text(
            "Live Monitoring",
          ),
        ),
        NavigationRailDestination(
          padding: EdgeInsets.symmetric(vertical: 6),
          icon: Image.asset(
            "assets/dashboard-icons/map.png",
          ),
          label: Text(
            "Location Map",
          ),
        ),
        NavigationRailDestination(
          padding: EdgeInsets.symmetric(vertical: 6),
          icon: Image.asset(
            "assets/dashboard-icons/historical.png",
          ),
          label: Text(
            "Historical Data",
          ),
        ),
        NavigationRailDestination(
          padding: EdgeInsets.symmetric(vertical: 6),
          icon: Image.asset(
            "assets/dashboard-icons/forecast.png",
          ),
          label: Text(
            "Forecast",
          ),
        ),
        NavigationRailDestination(
          padding: EdgeInsets.symmetric(vertical: 6),
          icon: Image.asset(
            "assets/dashboard-icons/alert.png",
          ),
          label: Text(
            "Alerts & Notifications",
          ),
        ),
        NavigationRailDestination(
          padding: EdgeInsets.symmetric(vertical: 6),
          icon: Image.asset(
            "assets/dashboard-icons/chart.png",
          ),
          label: Text(
            "Charts & Graphs",
          ),
        ),
        NavigationRailDestination(
          padding: EdgeInsets.symmetric(vertical: 6),
          icon: Image.asset(
            "assets/dashboard-icons/report.png",
          ),
          label: Text(
            "Generate Reports",
          ),
        ),
        NavigationRailDestination(
          padding: EdgeInsets.symmetric(vertical: 6),
          icon: Image.asset(
            "assets/dashboard-icons/devices.png",
          ),
          label: Text(
            "Manage Devices",
          ),
        ),
        NavigationRailDestination(
          padding: EdgeInsets.symmetric(vertical: 6),
          icon: Image.asset(
            "assets/dashboard-icons/settings.png",
          ),
          label: Text(
            "Settings",
          ),
        ),
        NavigationRailDestination(
          padding: EdgeInsets.symmetric(vertical: 6),
          icon: Image.asset(
            "assets/dashboard-icons/help.png",
          ),
          label: Text(
            "Help",
          ),
        ),
        NavigationRailDestination(
          padding: EdgeInsets.symmetric(vertical: 6),
          icon: Image.asset(
            "assets/dashboard-icons/cloud.png",
          ),
          label: Text(
            "Clouds Storage",
          ),
        ),
      ],
    );
  }
}
