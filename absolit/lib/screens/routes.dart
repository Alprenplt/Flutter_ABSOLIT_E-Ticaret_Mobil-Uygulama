import 'package:absolit/screens/Hakkimizda.dart';
import 'package:absolit/screens/productGiris.dart';

import 'package:absolit/screens/productJacket.dart';
import 'package:absolit/screens/productList.dart';
import 'package:absolit/screens/productShoe.dart';
import 'package:absolit/screens/productSweat.dart';
import 'package:absolit/screens/productThsirt.dart';
import 'package:absolit/screens/productUrun.dart';
import 'package:flutter/material.dart';
import 'package:absolit/araçlar/constants.dart';




class Routes { //yol tanımları
  static final routes = <String,WidgetBuilder>{
    Constants.ROUTE_PRODUCT_HAKKIMIZDA:(BuildContext context) => ProductHakkimizda(),
    Constants.ROUTE_PRODUCT_GIRIS:(BuildContext context) =>  const ProductGiris(),
    Constants.ROUTE_PRODUCT_URUN:(BuildContext context) =>  const ProductUrun(),
    Constants.ROUTE_PRODUCT_LIST:(BuildContext context) => ProductList(),
    Constants.ROUTE_PRODUCT_THSIRT:(BuildContext context) => const ProductThsirt(),
    Constants.ROUTE_PRODUCT_SWEAT:(BuildContext context) => const ProductSweat(),
    Constants.ROUTE_PRODUCT_JACKET:(BuildContext context) => const ProductJacket(),
    Constants.ROUTE_PRODUCT_SHOES:(BuildContext context) => const ProductShoe()



  };
}

