import 'package:absolit/screens/anasayfa.dart';
import 'package:flutter/material.dart';

import 'screens/productList.dart';
import 'screens/routes.dart';

void main() {
  runApp(
      const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'ABSOLİT',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home:  AnaSayfa(),
      routes: Routes.routes,
    );
  }
}
