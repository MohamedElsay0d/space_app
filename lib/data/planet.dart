import 'dart:developer';

class Planet {
  final String name;
  final String image;
  final String model3D;
  final String title;
  final String about;
  final String distanceFromSun;
  final String lengthOfDay;
  final String orbitalPeriod;
  final String radius;
  final String mass;
  final String gravity;
  final String surfaceArea;

  Planet({
    required this.name,
    required this.image,
    required this.model3D,
    required this.title,
    required this.about,
    required this.distanceFromSun,
    required this.lengthOfDay,
    required this.orbitalPeriod,
    required this.radius,
    required this.mass,
    required this.gravity,
    required this.surfaceArea,
  });

  factory Planet.fromCsvRow(List<dynamic> row) {
  log("Creating Planet from row: $row");
  return Planet(
    name: row[0],
    image: row[1],
    model3D: row[2] ?? '',
    title: row[3],
    about: row[4],
    distanceFromSun: row[5].toString(),
    lengthOfDay: row[6].toString(),
    orbitalPeriod: row[7].toString(),
    radius: row[8].toString(),
    mass: row[9].toString(),
    gravity: row[10].toString(),
    surfaceArea: row[11].toString(),
  );
}

}
