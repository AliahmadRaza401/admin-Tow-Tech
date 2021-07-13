import 'dart:async';
import 'package:flutter/material.dart';
import 'dart:html';
import 'package:google_maps/google_maps.dart';
import 'dart:ui' as ui;

class Map extends StatefulWidget {
  // const Map({Key? key}) : super(key: key);

  Map({this.latitude, this.longitude});

  var latitude;
  var longitude;

  @override
  _MapState createState() => _MapState();
}

class _MapState extends State<Map> {
  @override
  void initState() {
    super.initState();
    print("Location----------------------------------");
    print(widget.latitude);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Google Map",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: getMap(),
    );
  }

  Widget getMap() {
    String htmlId = "7";

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
      final myLatlng = LatLng(1.1234, 103.8198);
      // final myLatlng = LatLng(widget.latitude, widget.longitude);
      print(widget.latitude);
      print(widget.longitude);

      final mapOptions = MapOptions()
        ..zoom = 10
        ..center = LatLng(1.3521, 103.8198);

      final elem = DivElement()
        ..id = htmlId
        ..style.width = "100%"
        ..style.height = "100%"
        ..style.border = 'none';

      final map = GMap(elem, mapOptions);

      Marker(MarkerOptions()
        ..position = myLatlng
        ..map = map
        ..title = 'Hello World!');

      return elem;
    });

    return HtmlElementView(viewType: htmlId);
  }
}
