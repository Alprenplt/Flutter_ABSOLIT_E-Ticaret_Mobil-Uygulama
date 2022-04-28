
import 'package:absolit/screens/productUrun.dart';
import 'package:flutter/material.dart';

class AnaSayfa extends StatelessWidget {
  late BuildContext context;

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(

        title: const Text(
          "ABSOLİT",
          style: TextStyle(color: Colors.white, fontSize: 40.0),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: _buildHomePage(),
    );
  }

  _buildHomePage() {
    Size screenSize = MediaQuery
        .of(context)
        .size;  // farklı ekranlarda ayarlama için
    return Container(
      child: ListView.builder(
        //3 satırlık bir eleman için
        itemCount: 3,
        itemBuilder: (context, index) {
          if (index == 0) {
            //
            return _buildTextWidgets(screenSize);
          } else if (index == 2) {
            return const SizedBox(
              height: 15.0,

            );
          }else {
            return _buildProductUrun();
          }
        },

      ),
    );
  }


  _buildTextWidgets(Size screenSize) {
    return Container(
      margin: const EdgeInsets.all(12.0),
      width: screenSize.width,
      child: Card(
        child: Container(
          color: Colors.blueGrey,

          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Row(

            mainAxisAlignment:
            MainAxisAlignment.spaceEvenly, //başta ve sonda boşluk bırak
            children: <Widget>[


              Text("HOŞGELDİNİZ", style: TextStyle(color: Colors.black, fontSize: 15.0),),


            ],
          ),
        ),
      ),
    );
  }

  _buildProductUrun() {

    return ProductUrun(
    );

  }


}