import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widgets/productListRow.dart';

class ProductList extends StatelessWidget {
  late BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(

        title: const Text(
          "KATEGORİLER",
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: _buildProductListPage(), //fonksiyon
    );
  }

  _buildProductListPage() {
    Size screenSize = MediaQuery.of(context).size;
    return Container(
      color: Colors.blueGrey,
      child: ListView.builder(
        //3 satırlık bir eleman için
        itemCount:3 ,
        itemBuilder: (context, index) {
          // her bir item için eleman sayısına göre döngü kurar
          if (index == 0) {
            // filtreleme widgeti için
            return _buildFilterWidgets(screenSize);
          } else if (index == 2) {
            return const SizedBox(
              height: 15.0,

            );

            //ürünlerden ikisini yan yana getirir
          } else {
            return _buildProductListRow(); //ürün listesinin satırını oluştur.
          }
        },
      ),
    );
  }

  _buildFilterWidgets(Size screenSize) {
    return Container(
      margin: const EdgeInsets.all(12.0),
      width: screenSize.width,
      child: Card(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceEvenly, //başta ve sonda boşluk bırak
            children: <Widget>[
              _buildFilterButton("Sırala"),
              Container( // aradaki çizgi
                color: Colors.black,
                width: 2.0,
                height: 24.0,
              ),
              _buildFilterButton("Filtrele")
            ],
          ),
        ),
      ),
    );
  }

  _buildFilterButton(String title) {
    return InkWell( //çevresinde gölgelendirme yapan buton
      child: Row(
        children: <Widget>[
          const Icon(Icons.arrow_drop_down, color: Colors.black),
          const SizedBox(
            width: 5.0,
          ),
          Text(title)
        ],
      ),
    );
  }

  _buildProductListRow() {
 
    return const ProductListRow(

    );

  }
}
