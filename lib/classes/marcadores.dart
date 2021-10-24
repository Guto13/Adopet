import 'package:google_maps/google_maps.dart';

class Marcadores {
  late LatLng location;
  late String title;

  Marcadores(LatLng location, String title) {
    this.location = location;
    this.title = title;
  }
}
