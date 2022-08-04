import 'package:google_maps/google_maps.dart';

class StepRes {
  LatLng startLocation;
  LatLng endLocation;
  StepRes({required this.startLocation, required this.endLocation});

  factory StepRes.fromJson(Map<String, dynamic> json) {
    return StepRes(
        startLocation: LatLng(
            json["start_location"]["lat"], json["start_location"]["lng"]),
        endLocation:
            LatLng(json["end_location"]["lat"], json["end_location"]["lng"]));
  }
}
