import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class LocationWidget extends StatelessWidget {
  const LocationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return FlutterMap(
      options: MapOptions(
        initialCenter:
            LatLng(27.700769, 85.300140), // Center the map over London
        initialZoom: 15,
        // interactionOptions:
        // const InteractionOptions(flags: InteractiveFlag.doubleTapZoom)
      ),
      children: [
        TileLayer(
          // Display map tiles from any source
          urlTemplate:
              'https://tile.openstreetmap.org/{z}/{x}/{y}.png', // OSMF's Tile Server
          userAgentPackageName: 'com.example.app',
          // And many more recommended properties!
        ),
        RichAttributionWidget(
          // Include a stylish prebuilt attribution widget that meets all requirments
          attributions: [
            TextSourceAttribution(
              'OpenStreetMap contributors',
              onTap: () => launchUrl(Uri.parse(
                  'https://openstreetmap.org/copyright')), // (external)
            ),
            // Also add images...
          ],
        ),
        MarkerLayer(markers: [
          Marker(
              point: LatLng(27.700769, 85.300140),
              width: 30,
              height: 30,
              alignment: Alignment.center,
              child: Icon(
                Icons.location_pin,
                size: 30,
                color: Color.fromARGB(255, 73, 1, 136),
              ))
        ])
      ],
    );
  }
}
