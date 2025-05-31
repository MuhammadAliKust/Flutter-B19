import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapDemo extends StatelessWidget {
  GoogleMapDemo({super.key});

  final Completer<GoogleMapController> _controller =
      Completer<GoogleMapController>();

  Set<Marker> markersSet = {
    Marker(
        markerId: MarkerId('1'),
        position: LatLng(33.6996, 73.0362),
        infoWindow: InfoWindow(title: 'Islamabad')),
    Marker(
        markerId: MarkerId('2'),
        position: LatLng(32.6996, 73.0362),
        infoWindow: InfoWindow(title: 'Marker 2')),
    Marker(
        markerId: MarkerId('3'),
        position: LatLng(31.6996, 73.0362),
        infoWindow: InfoWindow(title: 'Marker 3')),
    Marker(
        markerId: MarkerId('4'),
        position: LatLng(30.6996, 73.0362),
        infoWindow: InfoWindow(title: 'Marker 4')),
    Marker(
        markerId: MarkerId('5'),
        position: LatLng(29.6996, 73.0362),
        infoWindow: InfoWindow(title: 'Marker 5')),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Google Map"),
      ),
      body: Stack(
        children: [
          GoogleMap(
            mapType: MapType.normal,
            markers: markersSet,
            // zoomGesturesEnabled: false,
            // zoomControlsEnabled: false,
            initialCameraPosition:
                CameraPosition(target: LatLng(33.6996, 73.0362), zoom: 14),
            onMapCreated: (GoogleMapController controller) {
              _controller.complete(controller);
            },
          ),
          Positioned.fill(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 28.0, vertical: 20),
                child: Card(
                  elevation: 10,
                  child: Container(
                    height: 200,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Row(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.network(
                                'https://static.vecteezy.com/system/resources/previews/036/594/092/non_2x/man-empty-avatar-photo-placeholder-for-social-networks-resumes-forums-and-dating-sites-male-and-female-no-photo-images-for-unfilled-user-profile-free-vector.jpg',
                                width: 150,
                                height: double.infinity,
                                fit: BoxFit.fill,
                              )),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Name",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Ali",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              Text(
                                "City",
                                style: TextStyle(
                                    fontSize: 22, fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Rwp",
                                style: TextStyle(
                                    fontSize: 18, fontWeight: FontWeight.w500),
                              ),
                              // Text(
                              //   "Address",
                              //   style: TextStyle(
                              //       fontSize: 22, fontWeight: FontWeight.bold),
                              // ),
                              // Text(
                              //   "Shamsabad",
                              //   style: TextStyle(
                              //       fontSize: 18, fontWeight: FontWeight.w500),
                              // ),
                              CupertinoSwitch(value: true, onChanged: (val){})

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
