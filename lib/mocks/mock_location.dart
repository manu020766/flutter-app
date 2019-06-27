import '../models/location.dart';
import '../models/location_fact.dart';

class MockLocation extends Location {

  static final List<Location> items = [
    Location(
          name: 'Natalia',
          url: 'https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1351&q=80',
          facts: <LocationFact>[
            LocationFact(
              title: 'Sumary',
              text: 'A clown fish named Marlin lives in the Great Barrier Reef and loses his son, Nemo, after he ventures into the open sea, despite his father,s constant warnings about many of the oceandangers.',
            ),
            LocationFact(
              title: 'How to get there',
              text: ' Young clownfish named Nemo is captured by underwater sea divers and taken to a dentist office located in a wonderful city called Sydney Harbour!',
            )


          ]
        ),
    Location(
          name: 'Paula',
          url: 'https://images.unsplash.com/photo-1496440543089-3d0eb669f6f6?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1388&q=80',
          facts: <LocationFact>[
            LocationFact(
              title: 'Sumary',
              text: 'Given that critics were rather rhapsodic for Toy Story 4, as reflected by the 98% fresh ranking on Rotten Tomatoes',
            ),
            LocationFact(
              title: 'How to get there',
              text: 'You would think, considering the current epidemic of Hollywood sequelitis, that Oscar voters would warm up to the idea of giving another trophy',
            )


          ]
        ),
Location(
          name: 'Estela',
          url: 'https://images.unsplash.com/photo-1484399172022-72a90b12e3c1?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1350&q=80',
          facts: <LocationFact>[
            LocationFact(
              title: 'Sumary',
              text: 'Given that critics were rather rhapsodic for Toy Story 4, as reflected by the 98% fresh ranking on Rotten Tomatoes',
            ),
            LocationFact(
              title: 'How to get there',
              text: 'You would think, considering the current epidemic of Hollywood sequelitis, that Oscar voters would warm up to the idea of giving another trophy',
            )


          ]
        ),
  ];


  static Location FetchAny() {
    return MockLocation.items[0];
  }

  static List<Location> FetchAll() {
    return MockLocation.items;
  }

}