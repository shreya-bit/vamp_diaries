
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Characters in The Vampire Diaries',
                  ),
                  Container(
                      child:Table(
                          defaultColumnWidth: FixedColumnWidth(200),
                          border:TableBorder.all(
                              color:Colors.black,
                              style:BorderStyle.solid,
                              width:2),
                          children:[
                            TableRow(children:[
                              Column(children:[Text('Website', style: TextStyle(fontSize: 20.0))]),
                              Column(children:[Text('Tutorial', style: TextStyle(fontSize: 20.0))]),
                              Column(children:[Text('Review', style: TextStyle(fontSize: 20.0))]),
                            ]),
                            TableRow( children: [
                              Column(children:[Text('Javatpoint')]),
                              Column(children:[Text('Flutter')]),
                              Column(children:[Text('5*')]),
                            ]),
                            TableRow( children: [
                              Column(children:[Text('Javatpoint')]),
                              Column(children:[Text('MySQL')]),
                              Column(children:[Text('5*')]),
                            ]),
                            TableRow( children: [
                              Column(children:[Text('Javatpoint')]),
                              Column(children:[Text('ReactJS')]),
                              Column(children:[Text('5*')]),
                            ])])
                  )
                ])
        )
    );

  }
}
