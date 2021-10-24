import 'package:adopet/componentes_gerais/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart';
import 'package:google_maps/google_maps_places.dart';
import 'dart:html';
import 'dart:ui' as ui;
import 'package:location/location.dart';

class BodyLocalizacao extends StatefulWidget {
  const BodyLocalizacao({Key? key}) : super(key: key);

  @override
  _BodyLocalizacaoState createState() => _BodyLocalizacaoState();
}

class _BodyLocalizacaoState extends State<BodyLocalizacao> {
  late InfoWindow infowindow;
  late GMap map;
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getLocation(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return getMap(snapshot.data as LocationData);
          } else {
            return CircularProgressIndicator();
          }
        });
  }

  Future<LocationData> getLocation() async {
    var location = new Location();
    return await location.getLocation();
  }

  Widget getMap(LocationData _location) {
    //A unique id to name the div element
    String htmlId = "6";
    //creates a webview in dart
    //ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
      final latLang = LatLng(_location.latitude, _location.longitude);
      //class to create a div element

      infowindow = InfoWindow();

      final mapOptions = MapOptions()
        ..zoom = 11
        ..tilt = 90
        ..center = latLang;
      final elem = DivElement()
        ..id = htmlId
        ..style.width = "100%"
        ..style.height = "100%"
        ..style.border = "none";

      final map = GMap(elem, mapOptions);

      for (var i = 0; i < marcadores.length; i++) {
        final marker = Marker(MarkerOptions()
          ..map = map
          ..position = marcadores[i].location
          ..title = marcadores[i].title);
      }

      return elem;
    });
    //creates a platform view for Flutter Web
    return HtmlElementView(
      viewType: htmlId,
    );
  }
}
