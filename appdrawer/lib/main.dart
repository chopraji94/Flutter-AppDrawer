import 'package:appdrawer/new_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new HomePage(),
      theme: new ThemeData(
          brightness: Brightness.light, primarySwatch: Colors.teal),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('App Drawer'),
        elevation: 15.0,
      ),
      body: new Container(
        child: new Center(
          child: new Text('Home Page'),
        ),
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: new Text('Pranav Chopra'),
              accountEmail: new Text('Chopraji94@gmail.com'),
              currentAccountPicture: new CircleAvatar(
                  backgroundColor: Colors.black, child: new Text('P')),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                    backgroundColor: Colors.black, child: new Text('C'))
              ],
            ),
            new ListTile(
                title: new Text('Page One'),
                trailing: new Icon(Icons.navigate_next),
                onTap: () => {
                      Navigator.of(context).pop(),
                      Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new NewPage('Page One'))),
                    },),
            new ListTile(
              title: new Text('Page Two'),
              trailing: new Icon(Icons.navigate_next),
              onTap: () => {
                Navigator.of(context).pop(),
                Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context) => new NewPage('Page Two')))
              },
            ),
            new Divider(thickness: 2.0, color: Theme.of(context).accentColor),
            new ListTile(
              title: new Text('Close'),
              trailing: new Icon(Icons.close),
              onTap: () => Navigator.of(context).pop(),
            )
          ],
        ),
      ),
    );
  }
}
