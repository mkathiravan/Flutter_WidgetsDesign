import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Youtube Exercise1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BottomNavDrawer(title: 'BottomNavigation & Navigation Drawer'),
    );
  }
}

class BottomNavDrawer extends StatelessWidget
{
  BottomNavDrawer({Key key, this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.yellowAccent,
      appBar: new AppBar(
        title: new Text("My Title"),
        actions: <Widget>[
          new IconButton(
            icon: new Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
          new IconButton(
            icon: new Icon(Icons.monetization_on),
            onPressed: () {},
          )
        ],
      ),
      body: new Container(
        color: Colors.red,
      ),
      drawer: new Drawer(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: MediaQuery.of(context).size.width * 0.85,
                child: DrawerHeader(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/header.jpeg"),
                          fit: BoxFit.cover)),
                  child: Text("Header"),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: ListView(children: [
                ListTile(
                  title: Text("Item 1"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text("Item 2"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text("Item 3"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text("Item 4"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListTile(
                  title: Text("Item 5"),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                )
              ]),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
      bottomNavigationBar: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.home),
              title: new Text("Home"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.search),
              title: new Text("Search"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.access_alarm),
              title: new Text("Alarm"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.report),
              title: new Text("Report"),
            ),
          ]),
    );
  }

}
