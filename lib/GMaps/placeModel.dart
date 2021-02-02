
class Place {
  String name;
  String formattedAddress;
  double lat;
  double lng;
  String locationId;

  Place({this.name, this.formattedAddress, this.lat, this.lng,this.locationId});

  factory Place.fromJson(Map<String, dynamic> map) {
    return Place(
        name: map['structured_formatting']['main_text'],//map['name'],
        formattedAddress: map['structured_formatting']['secondary_text'],//map['formatted_address'],
        locationId: map['place_id']
    );
  }

  static List<Place> parseLocationList(map) {
    var list = map['predictions'] as List;//results
    return list.map((movie) => Place.fromJson(movie)).toList();
  }


}
