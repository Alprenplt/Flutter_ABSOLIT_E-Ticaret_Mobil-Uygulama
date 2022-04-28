import 'package:absolit/screens/anasayfa.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductGiris extends StatefulWidget {
  const ProductGiris({Key? key}) : super(key: key);

  @override
  State<ProductGiris> createState() => _LoginState();
}

class _LoginState extends State<ProductGiris> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Card(
                elevation: 4.0,
                color: Colors.white,
                margin: EdgeInsets.only(left: 20, right: 20),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Image.asset("images/absolitr.png"),
                      ),
                      TextFormField(
                        style: const TextStyle(color: Colors.greenAccent),
                        cursorColor: const Color(0xFF9b9b9b),
                        keyboardType: TextInputType.text,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.grey,
                          ),
                          hintText: "e-posta",
                          hintStyle: TextStyle(
                            color: Color(0xFF9b9b9b),
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      TextFormField(
                        style: const TextStyle(color: Colors.blue),
                        cursorColor: const Color(0xFF9b9b9b),
                        keyboardType: TextInputType.text,
                        obscureText: true,
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.grey,
                          ),
                          hintText: "parola",
                          hintStyle: TextStyle(
                            color: Color(0xFF9b9b9b),
                            fontSize: 15,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.all(10),

                        child: ElevatedButton(
                          child: Text("Giriş Yap", style: TextStyle(color: Colors.black),),
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>AnaSayfa()));
                          },


                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}