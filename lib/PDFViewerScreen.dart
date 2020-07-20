import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PDFViewer Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PDFViewerScreen(title: 'PDFViewer Demo'),
    );
  }
}

class PDFViewerScreen extends StatefulWidget {
  PDFViewerScreen({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _PDFViewerScreenState createState() => _PDFViewerScreenState();
}

class _PDFViewerScreenState extends State<PDFViewerScreen> {
  bool _isLoading = true;
  PDFDocument doc;

  void _loadFromAssets() async {
    setState(() {
      _isLoading = true;
    });
    doc = await PDFDocument.fromAsset('assets/LiveData.pdf');
    setState(() {
      _isLoading = false;
    });
  }

  void _loadFromUrl() async {
    setState(() {
      _isLoading = true;
    });
    doc = await PDFDocument.fromURL(
        'http://www.pdf995.com/samples/pdf.pdf');
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PDF Viewer"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              flex: 8,
              child: _isLoading
                  ? CircularProgressIndicator()
                  : PDFViewer(
                document: doc,
              ),
            ),
            Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    RaisedButton(
                      color: Colors.blue,
                      child: Text(
                        'Load From Assets',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: _loadFromAssets,
                    ),
                    RaisedButton(
                      color: Colors.blue,
                      child: Text(
                        'Load From URL',
                        style: TextStyle(color: Colors.white),
                      ),
                      onPressed: _loadFromUrl,
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}