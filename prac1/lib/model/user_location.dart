class UserLocation {
  final Street street;
  final String city;
  final String state;
  final String country;
  final String postCode;

  final Coordinates coordinates;
  final TimeZone timeZone;

  const UserLocation(
      {required this.street,
      required this.city,
      required this.state,
      required this.country,
      required this.postCode,
      required this.coordinates,
      required this.timeZone});

  factory UserLocation.fromMap(Map<String, dynamic> e) {
    final coordinates = Coordinates.fromMap(e['coordinates']);
    final timeZone = TimeZone.fromMap(e['timezone']);
    final street = Street.fromMap(e['street']);
    return UserLocation(
      street: street,
      city: e['city'],
      state: e['state'],
      country: e['country'],
      postCode: e['postcode'].toString(),
      coordinates: coordinates,
      timeZone: timeZone,
    );
  }
}

class Street {
  final int number;
  final String name;
  const Street({required this.number, required this.name});
  factory Street.fromMap(Map<String, dynamic> e) {
    return Street(
      number: e['number'],
      name: e['name'],
    );
  }
}

class Coordinates {
  final String latitude;
  final String longitude;
  const Coordinates({required this.latitude, required this.longitude});
  factory Coordinates.fromMap(Map<String, dynamic> e) {
    return Coordinates(
      latitude: e['latitude'],
      longitude: e['longitude'],
    );
  }
}

class TimeZone {
  final String offset;
  final String description;
  const TimeZone({required this.offset, required this.description});
  factory TimeZone.fromMap(Map<String, dynamic> e) {
    return TimeZone(
      offset: e['offset'],
      description: e['description'],
    );
  }
}
