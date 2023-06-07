class MapModel {
  MapModel({
    required this.id,
    required this.name,
    required this.address,
    required this.capacity,
    required this.city,
    required this.isVirtualStation,
    required this.latitude,
    required this.longitude,
    required this.zip,
  });
  late final int id;
  late final String name;
  late final String address;
  late final int capacity;
  late final String city;
  late final bool isVirtualStation;
  late final double latitude;
  late final double longitude;
  late final String zip;

  MapModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    address = json['address'];
    capacity = json['capacity'];
    city = json['city'];
    isVirtualStation = json['isVirtualStation'];
    latitude = json['latitude'];
    longitude = json['longitude'];
    zip = json['zip'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['address'] = address;
    _data['capacity'] = capacity;
    _data['city'] = city;
    _data['isVirtualStation'] = isVirtualStation;
    _data['latitude'] = latitude;
    _data['longitude'] = longitude;
    _data['zip'] = zip;
    return _data;
  }
}
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
//
// import 'google_map/mapp_controller.dart';
//
// main() {
//   runApp(MaterialApp(
//     home: MyApp(),
//   ));
// }
//
// class MyApp extends StatefulWidget {
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   MapController mapController = Get.put(MapController());
//
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     mapController.fetchLocations();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: Obx(
//                 () => mapController.mapModel.isNotEmpty
//                 ? GoogleMap(
//               initialCameraPosition: CameraPosition(
//                 target: LatLng(mapController.mapModel.first.latitude,
//                     mapController.mapModel.first.longitude),
//                 zoom: 13,
//               ),
//               markers: mapController.markers,
//             )
//                 : Center(
//               child: CircularProgressIndicator(),
//             ),
//           )),
//     );
//   }
// }