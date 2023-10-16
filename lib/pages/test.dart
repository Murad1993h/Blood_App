import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart';

class MapLoc extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Live Location Map',
      home: LiveLocationMap(),
    );
  }
}

class LiveLocationMap extends StatefulWidget {
  @override
  _LiveLocationMapState createState() => _LiveLocationMapState();
}

class _LiveLocationMapState extends State<LiveLocationMap> {
  GoogleMapController? _controller;
  LocationData? _locationData;
  final Location _location = Location();
  final Set<Marker> _markers = <Marker>{};

  @override
  void initState() {
    super.initState();
    _initLocationTracking();
  }

  void _initLocationTracking() {
    _location.onLocationChanged.listen((LocationData currentLocation) {
      setState(() {
        _locationData = currentLocation;
        _updateMarkers();
      });
    });
  }

  void _updateMarkers() {
    if (_locationData != null) {
      var marker = Marker(
        markerId: const MarkerId("currentLocation"),
        position: LatLng(_locationData!.latitude!, _locationData!.longitude!),
        infoWindow: const InfoWindow(
          title: "Current Location",
        ),
      );

      setState(() {
        _markers.clear();
        _markers.add(marker);
      });

      if (_controller != null) {
        _controller!.animateCamera(
          CameraUpdate.newLatLng(LatLng(_locationData!.latitude!, _locationData!.longitude!)),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Live Location Map'),
      ),
      body: Stack(
        children: [
          GoogleMap(
            onMapCreated: (GoogleMapController controller) {
              _controller = controller;
            },
            initialCameraPosition: const CameraPosition(
              target: LatLng(23.8698462, 90.4030951), // Initial position (you can set it to any default location)
              zoom: 15.0,
            ),
            markers: _markers,
            mapToolbarEnabled: true,
          ),
          Positioned(
            top: 16.0,
            right: 16.0,
            child: FloatingActionButton(
              onPressed: () {
                _updateMarkers();
              },
              child: const Icon(Icons.location_searching),
            ),
          ),
        ],
      ),
    );
  }
}
