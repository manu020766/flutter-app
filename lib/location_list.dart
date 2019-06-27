import 'package:flutter/material.dart';
import 'package:fluttercrashcourse/location_detail.dart';
import './models/location.dart';
import './styles.dart';

class LocationList extends StatelessWidget {
  final List<Location> _locations;

  LocationList(this._locations);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Locations", style: Styles.navBarTitle)),
      body: ListView.builder(
        itemCount: _locations.length,
        itemBuilder: _listViewItemBuilder,
      ),
    );
  }

  Widget _listViewItemBuilder(BuildContext context, int index) {
    var location = _locations[index];
    return ListTile(
      contentPadding: EdgeInsets.all(10.0),
      leading: _itemThumbnail(location),
      title: _itemTitle(location),
      onTap: () => _navigationToLocationDetail(context, location),
    );
  }
}

void _navigationToLocationDetail(BuildContext context, Location location) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => LocationDetail(location),
      ));
}

Widget _itemThumbnail(Location location) {
  return Container(
    constraints: BoxConstraints.tightFor(width: 100.0),
    child: Image.network(location.url, fit: BoxFit.fitWidth),
  );
}

Widget _itemTitle(Location location) {
  return Text(location.name, style: Styles.textDefault);
}
