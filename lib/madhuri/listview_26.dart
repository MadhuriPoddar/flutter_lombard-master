import 'package:flutter/material.dart';

class MadhuriList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //debugShowCheckedModeBanner: false,
      title: 'ListViews',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(title: Text('ListViews')),
        body: BodyLayout(),
      ),
    );
  }
}

class BodyLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return _mySeparatedListView(context);
  }
}

/*------------Static ListView--------*/
// replace this function with the code in the examples
Widget _myListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        title: Text('Sun'),
      ),
      ListTile(
        title: Text('Moon'),
      ),
      ListTile(
        title: Text('Star'),
      ),
    ],
  );
}

/*------------divideTiles------------*/
Widget _myDivideListView(BuildContext context) {
  return ListView(
    children: ListTile.divideTiles(
      context: context,
      tiles: [
        ListTile(
          title: Text('Sun'),
        ),
        ListTile(
          title: Text('Moon'),
        ),
        ListTile(
          title: Text('Star'),
        ),
      ],
    ).toList(),
  );
}

/*----------Dynamic ListView------------*/
Widget _myDynamicListView(BuildContext context) {

  // backing data
  final europeanCountries = ['Albania', 'Andorra', 'Armenia', 'Austria',
    'Azerbaijan', 'Belarus', 'Belgium', 'Bosnia and Herzegovina', 'Bulgaria',
    'Croatia', 'Cyprus', 'Czech Republic', 'Denmark', 'Estonia', 'Finland',
    'France', 'Georgia', 'Germany', 'Greece', 'Hungary', 'Iceland', 'Ireland',
    'Italy', 'Kazakhstan', 'Kosovo', 'Latvia', 'Liechtenstein', 'Lithuania',
    'Luxembourg', 'Macedonia', 'Malta', 'Moldova', 'Monaco', 'Montenegro',
    'Netherlands', 'Norway', 'Poland', 'Portugal', 'Romania', 'Russia',
    'San Marino', 'Serbia', 'Slovakia', 'Slovenia', 'Spain', 'Sweden',
    'Switzerland', 'Turkey', 'Ukraine', 'United Kingdom', 'Vatican City'];

  return ListView.builder(
    itemCount: europeanCountries.length,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text(europeanCountries[index]),
      );
    },
  );
}

/*-----------------Infinite list------------*/

Widget _myInfiniteListView(BuildContext context) {
  return ListView.builder(
    itemBuilder: (context, index) {
      return ListTile(
        title: Text('row $index'),
      );
    },
  );
}
/*--------------separated-------------*/

Widget _mySeparatedListView(BuildContext context) {
  return ListView.separated(
    itemCount: 1000,
    itemBuilder: (context, index) {
      return ListTile(
        title: Text('row $index'),
      );
    },
    separatorBuilder: (context, index) {
      return Divider();
    },
  );
}

/*--------------Horizontal ListView-------------*/

Widget _myHorizontalListView(BuildContext context) {
  return ListView.builder(
    scrollDirection: Axis.horizontal,
    itemBuilder: (context, index) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 1.0),
        color: Colors.tealAccent,
        child: Text('$index'),
      );
    },
  );
}

/*--------------Styling------------*/

Widget _myStylingListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: Icon(Icons.wb_sunny),
        title: Text('Sun'),
      ),
      ListTile(
        leading: Icon(Icons.brightness_3),
        title: Text('Moon'),
      ),
      ListTile(
        leading: Icon(Icons.star),
        title: Text('Star'),
      ),
    ],
  );
}

/*------------------trailing-----------*/

Widget _myTrailingListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/sun.jpg'),
        ),
        title: Text('Sun'),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/moon.jpg'),
        ),
        title: Text('Moon'),
      ),
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/stars.jpg'),
        ),
        title: Text('Star'),
      ),
    ],
  );
}

/*------------------subtitle-----------*/

Widget _mySubtitleListView(BuildContext context) {
  return ListView(
    children: <Widget>[
      ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/sun.jpg'),
        ),
        title: Text('Sun'),
        subtitle: Text('93 million miles away'),
      ),
    ],
  );
}

/*--------------Cards----------*/

Widget _myCardsListView(BuildContext context) {

  final titles = ['bike', 'boat', 'bus', 'car',
    'railway', 'run', 'subway', 'transit', 'walk'];

  final icons = [Icons.directions_bike, Icons.directions_boat,
    Icons.directions_bus, Icons.directions_car, Icons.directions_railway,
    Icons.directions_run, Icons.directions_subway, Icons.directions_transit,
    Icons.directions_walk];

  return ListView.builder(
    itemCount: titles.length,
    itemBuilder: (context, index) {
      return Card( //                           <-- Card widget
        child: ListTile(
          leading: Icon(icons[index]),
          title: Text(titles[index]),
        ),
      );
    },
  );
}

/*-----------------Custom list item -------------*/

Widget _myCustomListView(BuildContext context) {

  // the Expanded widget lets the columns share the space
  Widget column = Expanded(
    child: Column(
      // align the text to the left instead of centered
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text('Title', style: TextStyle(fontSize: 16),),
        Text('subtitle'),
      ],
    ),
  );

  return ListView.builder(
    itemBuilder: (context, index) {
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              column,
              column,
            ],
          ),
        ),
      );
    },
  );
}

/*-----------------Touch detection-----------*/

Widget _myTouchDetectionListView(BuildContext context) {
  return ListView(


    children: <Widget>[
      ListTile(
        title: Text('Sun'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          print('Sun');
        },
      ),
      ListTile(
        title: Text('Moon'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          print('Moon');
        },
      ),
      ListTile(
        title: Text('Star'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () {
          print('Star');
        },
      ),
      ListView.custom(
        childrenDelegate: null,
      )
    ],
  );
}
/*-------------Updating list data-------*/
/*-------------Adding and deleting rows in a ListView-------*/



