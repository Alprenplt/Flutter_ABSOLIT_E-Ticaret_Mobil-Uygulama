import 'package:flutter/material.dart';

import '../araçlar/constants.dart';

class ProductListRow extends StatelessWidget {
  const ProductListRow({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            _buildProductThsirtCard(context),
            _buildProductSweatCard(context),
          ],
        ),
        Row(
          children: <Widget>[
            _buildProductJacketCard(context),
            _buildProductShoeCard(context),
          ],
        ),
      ],
    );
  }

  _buildProductThsirtCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Constants.ROUTE_PRODUCT_THSIRT);
      },
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset("images/thsirt.jpg"),

              height: 165.0,
              width: MediaQuery.of(context).size.width /
                  2.1, //mevcut ekranın yarısını almak için
            )
          ],
        ),
      ),
    );
  }

  _buildProductSweatCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Constants.ROUTE_PRODUCT_SWEAT);
      },
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset("images/sweat.jpg"),

              height: 165.0,
              width: MediaQuery.of(context).size.width /
                  2.1, //mevcut ekranın yarısını almak için
            )
          ],
        ),
      ),
    );
  }

  _buildProductJacketCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Constants.ROUTE_PRODUCT_JACKET);
      },
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset("images/jacket.jpg"),

              height: 165.0,
              width: MediaQuery.of(context).size.width /
                  2.1, //mevcut ekranın yarısını almak için
            )
          ],
        ),
      ),
    );
  }

  _buildProductShoeCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Constants.ROUTE_PRODUCT_SHOES);
      },
      child: Card(
        child: Column(
          children: <Widget>[
            Container(
              child: Image.asset("images/shoes.jpg"),
              //Image.asset("/images"),

              height: 165.0,
              width: MediaQuery.of(context).size.width /
                  2.1, //mevcut ekranın yarısını almak için
            )
          ],
        ),
      ),
    );
  }
}
