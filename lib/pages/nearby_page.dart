import 'package:course_app_flutter/components/toolbar.dart';
import 'package:course_app_flutter/config/app_icon.dart';
import 'package:course_app_flutter/config/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:latlong2/latlong.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Toolbar(title: AppStrings.nearby),
      body: FlutterMap(
        options: MapOptions(
          center: LatLng(-7.030759, 109.577521),
          zoom: 10,
        ),
        children: [
          TileLayer(
            urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
            userAgentPackageName: 'dev.ces.flutter',
            // Plenty of other options available!
          ),
          MarkerLayer(
            markers: [
              Marker(
                point: LatLng(-7.030759, 109.577521),
                width: 100,
                height: 50,
                builder: (context) {
                  return Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(14),
                          ),
                        ),
                        child: const Text(
                          'Username',
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      SvgPicture.asset(
                        AppIcons.icLocation,
                        colorFilter: const ColorFilter.mode(
                            Colors.black, BlendMode.srcIn),
                      ),
                    ],
                  );
                },
              ),
            ],
          )
        ],
      ),
    );
  }
}
