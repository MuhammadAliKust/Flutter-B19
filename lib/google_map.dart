// import 'dart:async';
//
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// class GoogleMapDemo extends StatelessWidget {
//   GoogleMapDemo({super.key});
//
//   final Completer<GoogleMapController> _controller =
//       Completer<GoogleMapController>();
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Google Map"),
//       ),
//       body: GoogleMap(
//         mapType: MapType.hybrid,
//         initialCameraPosition: CameraPosition(target: LatLng(33.6996, 73.0362)),
//         onMapCreated: (GoogleMapController controller) {
//           _controller.complete(controller);
//         },
//       ),
//     );
//   }
// }
