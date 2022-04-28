import 'package:flutter/material.dart';

class ProductHakkimizda extends StatelessWidget {
  late BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "HAKKIMIZDA",
          style: TextStyle(color: Colors.white, fontSize: 30.0),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
      ),
      body: _buildProductHakkimizdaPage(),
    );
  }

  _buildProductHakkimizdaPage() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildProductResimCard(context),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildProductMetinCard(context),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildProductHakkimizdaCard(context),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildProductTableCard(context),
          ],
        ),

       Row(
         mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildProductInstaCard(context),
            _buildProductFaceCard(context),
            _buildProductTwitterCard(context),
          ],
        ),

      ],
    );
  }

  _buildProductResimCard(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
            child: Image.asset("images/bb.png"),
            height: 200.0,
            width: 400,
          )
        ],
      ),
    );
  }

  _buildProductMetinCard(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
            child:

            Text(
                "İLETİŞİM", style: TextStyle(color: Colors.black,fontSize: 50.0),

            ),

          )
        ],
      ),
    );
  }

  _buildProductHakkimizdaCard(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[Container(
          child:

          Text(
            "\n ABSOLİT GİYİM İTHALAT İHRACAT VE TİCARET ŞİRKETİ "
                "\n \nİnternet sitesi: www.absolit.com  "
                "\n \n Adres: Levent/Beşiktaş /İSTANBUL "
                " \n \nTelefon: 05060591744 ",
            overflow: TextOverflow.clip, textAlign: TextAlign.left, style: TextStyle(fontSize: 15),


          ),
        )
        ],
      ),
    );
  }

  _buildProductTableCard(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
            child: Image.asset("images/table.png"),
            height: 300.0,
            width: 400,
          )
        ],
      ),
    );

  }

  _buildProductInstaCard(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
            child: Image.asset("images/insta.jpg"),
            height: 50.0,
            width: 50,
          )
        ],
      ),
    );
  }

  _buildProductFaceCard(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
            child: Image.asset("images/facebook.png"),
            height: 50.0,
            width: 50,
          )
        ],
      ),
    );
  }

  _buildProductTwitterCard(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Container(
            child: Image.asset("images/twitter.png"),
            height: 50.0,
            width: 50,
          )
        ],
      ),
    );
  }
}
