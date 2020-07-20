import 'package:flutter/material.dart';
import 'package:flutter_ui4/ripple_animation.dart';
import 'package:flutter_ui4/waveanimation.dart';
import 'PDFViewerScreen.dart';
import 'bottomnavdrawer.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Youtube Player',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RaisedButton(
          elevation: 0,
          padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),
          color: Colors.blue,
          textColor: Colors.white,
          child: Text('Hello Flutter Youtube',
            style: TextStyle(
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                textBaseline: TextBaseline.alphabetic
            ),),
          onPressed: () {
            print("Pressed on a RaisedButton");
          },
        ),
      ),
    );
  }
}



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter UI"),
      ),
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 40),
            MaterialButton(
              padding: EdgeInsets.all(12.0),
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30)),
              minWidth: double.infinity,
              child: Text("Bottom Navigation & Navigation Drawer"),
              color: Colors.orange,
              textColor: Colors.white,
              splashColor: Colors.grey,
              //padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return BottomNavDrawer();
                }));
              },
            ),
            const SizedBox(height: 40),
            MaterialButton(
              padding: EdgeInsets.all(12.0),
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30)),
              minWidth: double.infinity,
              child: Text("Flutter PDFViewer"),
              color: Colors.orange,
              textColor: Colors.white,
              splashColor: Colors.grey,
              //padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return PDFViewerScreen();
                }));
              },
            ),


            const SizedBox(height: 40),
            MaterialButton(
              padding: EdgeInsets.all(12.0),
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30)),
              minWidth: double.infinity,
              child: Text("Wave Animation"),
              color: Colors.orange,
              textColor: Colors.white,
              splashColor: Colors.grey,
              // padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return MyWaveAnimation();
                }));
              },
            ),


            const SizedBox(height: 40),
            MaterialButton(
              padding: EdgeInsets.all(12.0),
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30)),
              minWidth: double.infinity,
              child: Text("Ripple Animation"),
              color: Colors.orange,
              textColor: Colors.white,
              splashColor: Colors.grey,
              // padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 24.0),

              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) {
                  return RipplesAnimation();
                }));
              },
            ),


          ],
        ),
      ),
    );
  }

}
