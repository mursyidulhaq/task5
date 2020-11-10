import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class Persegi extends StatefulWidget {
  @override
  _PersegiState createState() => _PersegiState();
}

class _PersegiState extends State<Persegi> {
  @override
  TextEditingController sisiController = TextEditingController();
  String luas = " ";
  final _formKey = GlobalKey<FormState>();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Persegi'),
      ),body: Column(
      key: _formKey,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          padding: EdgeInsets.all(10),
          child: TextFormField(
            controller: sisiController,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'inputkan sisi persegi'
            ),
            keyboardType: TextInputType.number,


          ),
        ),
        Container(
          child: RaisedButton(
            child: Text(
              'Cari Luas'
            ),
            onPressed: (){


              setState(() {

                if(sisiController.text.isEmpty){
                   Toast.show("sisi harus di inputkan",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM);
                }
                else {
                  double sisi = double.parse(sisiController.text);
                  var hasil = sisi * sisi;
                  luas = hasil.toString();
                }
              });
            },
          ),
        ),
        Container(
          padding: EdgeInsets.all(10),
          child: Text(luas

          )
        )
      ],
    ),


    );
  }
}
