import 'package:flutter/material.dart';

import './models/location.dart';
// import './location_detail.dart';
import './mocks/mock_location.dart';

import './location_list.dart';

void main() {
  final List<Location> mockLocations = MockLocation.FetchAll();


  // runApp(MaterialApp(home: LocationDetail(mockLocation)));
  runApp(MaterialApp(home: LocationList(mockLocations)));
}
