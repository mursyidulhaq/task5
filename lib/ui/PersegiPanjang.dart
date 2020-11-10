import 'package:flutter/material.dart';
import 'package:toast/toast.dart';

class PersegiPanjang extends StatefulWidget {
  @override
  _PersegiPanjangState createState() => _PersegiPanjangState();
}

class _PersegiPanjangState extends State<PersegiPanjang> {
  @override

  TextEditingController panjangController = TextEditingController();
  TextEditingController lebarController = TextEditingController();

  String luas = '';

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Persegi panjang'
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
                labelText: 'panjang'
              ),
              controller: panjangController,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            child: TextFormField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'lebar'
              ),
              controller: lebarController,
            ),

          ),
          Container(
            child: MaterialButton(
              child: Text(
                'Luas Persegi Panjang'
              ),
              color: Colors.lightGreen,
              onPressed: (){
                setState(() {

                  if(panjangController.text.isEmpty)
                    {
                      Toast.show("panjang persegi panjang harus di inputkan",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM);
                    }else if(lebarController.text.isEmpty){
                    Toast.show("tinggi persegi panjang harus di inputkan",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM);
                  }else
                    {
                      double p = double.parse(panjangController.text);
                      double l = double.parse(panjangController.text);
                      var hasil = p*l;
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
