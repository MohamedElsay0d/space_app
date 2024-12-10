import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:csv/csv.dart';
import 'planet.dart';

class DataLoader {
  static Future<List<Planet>> loadPlanets() async {
    try {
      log("Loading CSV file...");
      final csvData = await rootBundle.loadString('assets/data.csv');
      final List<List<dynamic>> rows =
          const CsvToListConverter().convert(csvData);
      return rows.skip(1).map((row) {
        return Planet.fromCsvRow(row);
      }).toList();
    } catch (e, stackTrace) {
      log("Error loading planets: $e");
      return [];
    }
  }
}
