import 'dart:html';

import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class Segitiga extends StatefulWidget {
  @override
  _SegitigaState createState() => _SegitigaState();
}

class _SegitigaState extends State<Segitiga> {
  @override

  TextEditingController alasController = TextEditingController();
  TextEditingController tinggiController = TextEditingController();

  String luas = '';
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Segi tiga'
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Alas'
              ),
              keyboardType: TextInputType.number,
              controller: alasController,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tinggi'
              ),
              keyboardType: TextInputType.number,
              controller: tinggiController,
            ),

          ),
          Container(
            child: MaterialButton(
              child: Text(
                  'Luas Segitiga'
              ),
              color: Colors.limeAccent,
              onPressed: (){
                setState(() {
                  if(alasController.text.isEmpty )
                    {
                      Toast.show("alas segitiga harus di inputkan",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM);
                    }else if(tinggiController.text.isEmpty)
                      {
                        Toast.show("tinggi segitiga harus di inputkan",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM);
                      }else
                        {
                          double a = double.parse(alasController.text);
                          double t = double.parse(tinggiController.text);
                          var hasil = (a*t)/2;
                          luas = hasil.toString();
                        }

                });
              },
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: Center(
              child: Text(
                  luas
              ),
            ),
          )
        ],
      ),

    );
  }
}
