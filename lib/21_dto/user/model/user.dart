class User {
  final String name;
  final String email;
  final double latitude;
  final double longitude;

//<editor-fold desc="Data Methods">
  User({
    required this.name,
    required this.email,
    required this.latitude,
    required this.longitude,
  });

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is User &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          email == other.email &&
          latitude == other.latitude &&
          longitude == other.longitude);

  @override
  int get hashCode =>
      name.hashCode ^ email.hashCode ^ latitude.hashCode ^ longitude.hashCode;

  @override
  String toString() {
    return 'User{ name: $name, email: $email, latitude: $latitude, longtitude: $longitude,}';
  }

  User copyWith({
    String? name,
    String? email,
    double? latitude,
    double? longtitude,
  }) {
    return User(
      name: name ?? this.name,
      email: email ?? this.email,
      latitude: latitude ?? this.latitude,
      longitude: longtitude ?? this.longitude,
    );
  }

//</editor-fold>
}
