import 'package:flutter/material.dart';
import 'package:sticky_headers/sticky_headers.dart';

class EmergencyPage extends StatefulWidget {
  @override
  _EmergencyPageState createState() => new _EmergencyPageState();
}

class _EmergencyPageState extends State<EmergencyPage> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView.builder(
        itemCount: places.length,
        itemBuilder: (context, i) {
          return new ExpansionTile(
            title: new Text(places[i].title, style: new TextStyle(fontSize: 20.0,  fontFamily: 'GoogleSans'),),
            children: <Widget>[
              new Column(
                children: _buildExpandableContent(places[i]),
              ),
            ],
          );
        },
      ),
    );
  }

  _buildExpandableContent(Place places) {
    List<Widget> columnContent = [];

    for (String content in places.contents)
      columnContent.add(
        new ListTile(
          title: new Text(content, style: new TextStyle(fontSize: 18.0),),
          leading: new Icon(places.icon),
          trailing: new Icon(Icons.call),
        ),
      );

    return columnContent; 
  }
}

class Place {
  final String title;
  List<String> contents = [];
  final IconData icon;

  Place(this.title, this.contents, this.icon);
}

List<Place> places = [
  new Place(
    'Art & Museum',
    ['Sangkring Art Space', 'Affandi Museum', 'Ullen Sentalu Museum', 'Jogja Gallery', 'De Mata Trick Eye Museum', 'Cemeti Art House', 'Sonobudoyo Museum', 'Winotosastro Batik Shop'],
    Icons.account_balance,
  ),
  new Place(
    'Landmark & Tourist Attractions',
    ['Malioboro', 'Benteng Vredeburg', 'Alun-alun Selatan', 'Prambanan Temple', 'Ratu Boko Temple', 'Ijo Temple'],
    Icons.location_city,
  ),
  new Place(
    'Nature',
    ['Samas Beach (sunflower fields)', 'Bukit Bintang', 'Lava tour Merapi', 'Punthuk Setumbu'],
    Icons.terrain,
  ),
  new Place(
    'Culinary',
    ['Raminten', 'Gudeg Bromo', 'Kopi Merapi', 'Kopi Klotok', 'Sate Klatak Pak Pong', 'Klinik Kopi', 'Soto Batok', 'Bakmi Jawa Mbah Gito', 'Kopi Joss'],
    Icons.local_dining,
  ),
];

