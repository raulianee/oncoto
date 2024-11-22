import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa extends StatefulWidget {
  const Mapa({super.key, required this.lat, required this.long});
  final double lat, long;

  @override
  State<Mapa> createState() => _MapaState();
}

class _MapaState extends State<Mapa> {
  @override
  Widget build(BuildContext context) {
    return FlutterMap(
    options: MapOptions(
      initialCenter: LatLng(widget.lat, widget.long), // Center the map over London
      initialZoom: 9.2,
    ),
    children: [
      TileLayer( // Display map tiles from any source
        urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png', // OSMF's Tile Server
        //userAgentPackageName: 'com.example.app',
        // And many more recommended properties!
      ),
    ],
  );
  }
}