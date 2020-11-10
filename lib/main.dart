import 'package:flutter/material.dart';
import 'package:task5_bangundatar/ui/Persegi.dart';
import 'package:task5_bangundatar/ui/PersegiPanjang.dart';
import 'package:task5_bangundatar/ui/Segitiga.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: BangunDatar(),debugShowCheckedModeBanner: false,
    );
  }
}

class BangunDatar extends StatefulWidget {
  @override
  _BangunDatarState createState() => _BangunDatarState();
}

class _BangunDatarState extends State<BangunDatar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Bangun Datar'
        ),
      ),
      body: Row(

        children: [
          Container(
            padding: EdgeInsets.all(10),
             child: MaterialButton(
               child: Text('persegi'),
               color: Colors.lightBlue,
               onPressed: (){
                 Navigator.push(context, MaterialPageRoute(builder: (context)=>Persegi()));
               },
             ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: MaterialButton(
              child: Text(
                'persegi panjang'
              ),
              color: Colors.lightGreen,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>PersegiPanjang()));
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: MaterialButton(
              child: Text(
                'segi tiga'
              ),
              color: Colors.limeAccent,
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Segitiga()));
              },
            ),
          ),
        ],
      ),
    );
  }
}



