import 'package:flutter/material.dart';

import '../araçlar/constants.dart';

class ProductUrun extends StatelessWidget {
  const ProductUrun({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {

    return Column(
      children: [

        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            _buildProductGirisCard(context),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _buildProductKategoriCard(context),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

            _buildProductHakkimizdaCard(context),

          ],
        ),
      ],
    );
  }

  _buildProductGirisCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Constants.ROUTE_PRODUCT_GIRIS);
      },
      child: Card(
        child: Column(
          children: <Widget>[
            Container(

              child: Image.asset("images/Giris.jpg"),

              height: 230.0,
              width: 220,
            )
          ],
        ),
      ),
    );
  }

  _buildProductKategoriCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Constants.ROUTE_PRODUCT_LIST);
      },
      child: Card(
        child: Column(
          children: <Widget>[
            Container(

              child: Image.asset("images/kategoriler.jpg"),

              height: 230.0,
              width: 220,

            )
          ],
        ),
      ),
    );
  }

  _buildProductHakkimizdaCard(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).pushNamed(Constants.ROUTE_PRODUCT_HAKKIMIZDA);
      },
      child: Card(
        child: Column(
          children: <Widget>[
            Container(

              child: Image.asset("images/Hakkımızda.jpg"),

              height: 230.0,
              width: 220,

            )
          ],
        ),
      ),
    );
  }



}
