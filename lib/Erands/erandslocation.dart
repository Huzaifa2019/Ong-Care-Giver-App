import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong/latlong.dart';
import 'package:geolocator/geolocator.dart';
import 'package:ong/Erands/erandscreateaccount.dart';
import 'package:ong/GMaps/api.dart';
import 'package:ong/GMaps/placeModel.dart';
import 'package:ong/GeoLocation/getLocation.dart';
import 'package:ong/Tutors/tutorcreateaccount.dart';

class ErandsLocationPage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

MapController mapcontroller = MapController();

List<Marker> _markers = [];

class _MyHomePageState extends State<ErandsLocationPage>
    with SingleTickerProviderStateMixin {
  TextEditingController textedit = new TextEditingController();
  final Geolocator geolocator = Geolocator()..forceAndroidLocationManager;
  Position user;
  LatLng loc;
  var currentSelectedValue;
  double longitude = 0.0;
  double latitude = 0.0;
  String location;
  TextEditingController locationController = TextEditingController();
  decodeLocation(String id) async {
    String url =
        "https://maps.googleapis.com/maps/api/place/details/json?key=${Config.apiKey}&placeid=" +
            Uri.encodeQueryComponent(id);
    //Uri.encodeQueryComponent(query)
    Response response = await Dio().get(url)
        // ignore: missing_return
        .then((Response results) async {
      Map<String, dynamic> placeLatLng =
          results.data['result']['geometry']['location'];
      setState(() {
        latitude = double.parse(placeLatLng['lat'].toString());
        longitude = double.parse(placeLatLng['lng'].toString());
      });
    });
  }

  List<Place> listPlace = [];
  getPlaces(String query) async {
    String url2 =
        "https://maps.googleapis.com/maps/api/place/autocomplete/json?key=${Config.apiKey}&input=${Uri.encodeQueryComponent(query)}";
    Response response = await Dio().get(url2);
    setState(() {
      listPlace = Place.parseLocationList(response.data);
    });
  }

  @override
  Widget build(BuildContext context) {
    _getCurrentLocation();
    double lat = 0.0;
    double long = 0.0;

    // void yourFunction() async {
    //   final coordinates = new Coordinates(lat, long);
    //   var addresses =
    //       await Geocoder.local.findAddressesFromCoordinates(coordinates);

    //   var first = addresses.first;
    //   address = "${first.addressLine}";
    //   addresscontroller.text = address;
    //   print(address);
    // }

    getLocation().then((position) {
      user = position;
      setMarkers(user);
    });

    if (user == null) {
      lat = 31.7538406;
      long = 72.9207986;
      //yourFunction();
    } else {
      lat = user.latitude;
      long = user.longitude;
      //yourFunction();
    }

    loc = LatLng(lat, long);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 28,
            color: Colors.black,
          ),
        ),
        title: Column(
          children: [
            SizedBox(height: 25),
            Text(
              'Your Location',
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(color: Colors.white),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Please add your location, so we can',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'find the perfect caregiver near you!',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Container(
                  height: 250,
                  child: FlutterMap(
                    mapController: mapcontroller,
                    options: MapOptions(
                      minZoom: 16.0,
                      center: loc,
                    ),
                    layers: [
                      TileLayerOptions(
                        // for OpenStreetMaps:
                        urlTemplate:
                            'https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png',
                        subdomains: ['a', 'b', 'c'],
                      ),
                      MarkerLayerOptions(
                        markers: _markers,
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: Text('Address')),
                    SizedBox(width: 10.0),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: TextFormField(
                        controller: locationController,
                        decoration: InputDecoration(
                            border: new OutlineInputBorder(
                                borderSide:
                                    new BorderSide(color: Colors.black)),
                            //filled: true,
                            suffixIcon: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    location = null;
                                    locationController.clear();
                                  });
                                },
                                child: Icon(
                                  Icons.send,
                                  color: locationController.text.isNotEmpty
                                      ? Color(0xffF4A7AF)
                                      : Color(0xffF4A7AF),
                                ))),
                        keyboardType: TextInputType.text,
                        onChanged: (String keyed) {
                          setState(() {
                            location = keyed;
                          });
                          getPlaces(location);
                        },
                      ),
                    ),
                    SizedBox(width: 10.0),
                  ],
                ),
              ),
              listPlace.length > 0
                  ? Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: MediaQuery.of(context).size.height * .20,
                        decoration: BoxDecoration(
                            color: Colors.grey.shade100,
                            borderRadius: BorderRadius.circular(25)),
                        child: ListView.separated(
                            shrinkWrap: true,
                            itemBuilder: (context, index) {
                              return ListTile(
                                title: Row(
                                  children: [
                                    Icon(Icons.location_on,
                                        color: Theme.of(context).primaryColor),
                                    Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: Text(
                                        listPlace[index].name != null
                                            ? listPlace[index].name
                                            : '',
                                        overflow: TextOverflow.fade,
                                        softWrap: true,
                                        maxLines: 1,
                                      ),
                                    ),
                                  ],
                                ),
                                subtitle: Container(
                                  width:
                                      MediaQuery.of(context).size.width * .90,
                                  child: Text(
                                    listPlace[index].formattedAddress != null
                                        ? listPlace[index].formattedAddress
                                        : ' ',
                                    overflow: TextOverflow.fade,
                                    softWrap: true,
                                    maxLines: 1,
                                  ),
                                ),
                                onTap: () {
                                  decodeLocation(listPlace[index].locationId);

                                  setState(() {
                                    locationController.text =
                                        listPlace[index].name;
                                    location = locationController.text;
                                    listPlace.clear();
                                  });
                                },
                              );
                            },
                            separatorBuilder: (context, index) => Padding(
                                  padding: const EdgeInsets.only(
                                      left: 10, right: 10),
                                  child: Divider(
                                    height: 1,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                ),
                            itemCount: listPlace.length),
                      ),
                    )
                  : Container(),
              //space(),

              Padding(
                padding:
                    const EdgeInsets.only(left: 25.0, right: 25.0, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                        // optional flex property if flex is 1 because the default flex is 1
                        flex: 1,
                        child: Text('Zip Code')),
                    SizedBox(width: 10.0),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Expanded(
                      // optional flex property if flex is 1 because the default flex is 1
                      flex: 1,
                      child: TextField(
                        decoration: InputDecoration(
                            border: new OutlineInputBorder(
                                borderSide:
                                    new BorderSide(color: Colors.black)),
                            labelStyle: TextStyle(color: Colors.grey[400])),
                      ),
                    ),
                    SizedBox(width: 10.0),
                  ],
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 25.0, right: 25, top: 40),
              //   child: GestureDetector(
              //     onTap: () {
              //       Navigator.push(
              //           context,
              //           new MaterialPageRoute(
              //               builder: (context) => SetupProfilePage()));
              //     },
              //     child: new Container(
              //       height: 40,
              //       width: MediaQuery.of(context).size.width,
              //       decoration: BoxDecoration(
              //         color: Colors.blue,
              //       ),
              //       child: Center(
              //           child: Text(
              //         "Submit",
              //         style: TextStyle(fontSize: 20, color: Colors.white),
              //       )),
              //     ),
              //   ),
              // ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(left: 20.0, right: 15, top: 20),
        child: GestureDetector(
          onTap: () {
            Navigator.push(
                context,
                new MaterialPageRoute(
                    builder: (context) => ErandsCreateAccountScreen()));
          },
          child: new Container(
            height: 40,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Center(
                child: Text(
              "Search",
              style: TextStyle(fontSize: 20, color: Colors.white),
            )),
          ),
        ),
      ),
    );
  }

  void setMarkers(pos) {
    LatLng point = LatLng(pos.latitude, pos.longitude);

    List<Marker> markers = [
      Marker(
        width: 45.0,
        height: 45.0,
        point: point,
        builder: (context) => Container(
          child: IconButton(
            icon: Icon(Icons.location_on),
            color: Colors.blue,
            iconSize: 45.0,
            onPressed: () {},
          ),
        ),
      ),
    ];

    setState(() {
      _markers.clear();
      _markers = markers;
    });
  }

  _getCurrentLocation() {
    geolocator
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.best)
        .then((Position position) {
      setState(() {
        user = position;
      });

      _getAddressFromLatLng();
    }).catchError((e) {
      print(e);
    });
  }

  _getAddressFromLatLng() async {
    try {
      // List<Placemark> p = await geolocator.placemarkFromCoordinates(
      //     user.latitude, user.longitude);

      setState(() {});
    } catch (e) {
      print(e);
    }
  }
}
