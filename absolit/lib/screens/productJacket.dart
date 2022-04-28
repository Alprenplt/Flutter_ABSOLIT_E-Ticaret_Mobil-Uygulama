import 'package:flutter/material.dart';

class ProductJacket extends StatefulWidget {
  const ProductJacket({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _ProductJacketState();
}

class _ProductJacketState extends State with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.chevron_left,
            size: 40.0,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        backgroundColor: Colors.black,
        title: const Text(
          "JACKET",
          style: TextStyle(color: Colors.white, fontSize: 40.0),
        ),
      ),
      body: _buildProductDetails(context),
      bottomNavigationBar: _buildButtomNavigation(),
    );
  }

  _buildProductDetails(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(4.0),
          child: Column(
            crossAxisAlignment:
            CrossAxisAlignment.start, //elemanlar arası boşluk
            children: <Widget>[
              _buildProductImages(),
              _buildProductTitle(),
              const SizedBox(
                height: 12.0,
              ),
              _buildProductPrice(),
              const SizedBox(
                height: 12.0,
              ),
              _buildDivider(size),
              const SizedBox(
                width: 12.0,
              ),
              _buildFurtherInfo(),
              const SizedBox(
                height: 14.0,
              ),
              _buildDivider(size),
              const SizedBox(
                height: 12.0,
              ), // daha fazla bilgi
              _buildSizeArea(),
              const SizedBox(
                height: 12.0,
              ),
              _buildInfo() // beden için
            ],
          ),
        )
      ],
    );
  }

  _buildProductImages() {
    TabController imagesController = TabController(length: 3, vsync: this);
    return Padding(
      padding: EdgeInsets.all(16.0),
      child: Container(
        height: 290.0,
        child: Center(
          child: DefaultTabController(
            length: 2,
            child: Stack(
              children: <Widget>[
                TabBarView(
                  controller: imagesController,
                  children: <Widget>[
                    Image.network(
                        "https://images.gardrops.com/uploads/2325675/user_items/232567516-s1-file-5fc7eafd23e02.jpeg"),
                    Image.network(
                        "https://images.gardrops.com/uploads/2325675/user_items/232567516-s4-file-5fc7eafd23f36.jpeg"),
                    Image.network(
                        "https://img.letgo.com/images/6a/a6/d0/d4/6aa6d0d441cd90807f0cdc77371c2a88.jpg?impolicy=img_900"),
                  ],
                ),
                Container(
                  alignment: FractionalOffset(0.5, 0.95),
                  child: TabPageSelector(
                    controller: imagesController,
                    selectedColor: Colors.grey,
                    color: Colors.white,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  _buildProductTitle() {
    return const Padding(
        padding: EdgeInsets.symmetric(horizontal: 12.0),
        child: Center(
          child: Text("Zara çift taraflı biker ceket ",
              style: TextStyle(fontSize: 18.0, color: Colors.black)),
        ));
  }

  _buildProductPrice() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        children: const <Widget>[
          Text(
            "Fiyatı:",
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
          SizedBox(
            width: 7.0,
          ),
          Text(
            "\$150",
            style: TextStyle(fontSize: 16.0, color: Colors.black),
          ),
          SizedBox(
            width: 8.0,
          ),
          Text("\$300",
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.grey,
                decoration: TextDecoration.lineThrough,
              )), //lineThrought textin üzerini çizmesi için kullanılır

          SizedBox(
            width: 8.0,
          ),
          Text("\% 50 İndirim !",
              style: TextStyle(fontSize: 13.0, color: Colors.blue))
        ],
      ),
    );
  }

  _buildDivider(Size screenSize) {
    return Column(
      children: <Widget>[
        Container(
          color: Colors.grey,
          width: screenSize.width,
          height: 0.50,
        )
      ],
    );
  }

  _buildFurtherInfo() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: .0),
      child: Row(
        children: const <Widget>[
          Icon(Icons.local_offer),
          SizedBox(
            width: 12.0,
          ),
          Text("Daha fazla bilgi için tıklayınız.",
              style: TextStyle(color: Colors.grey))
        ],
      ),
    );
  }

  _buildSizeArea() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment:
        MainAxisAlignment.spaceBetween, //aralarına max boşluk bırak
        children: <Widget>[
          Row(
            children: const <Widget>[
              Icon(Icons.straighten, color: Colors.grey),
              SizedBox(
                width: 12.0,
              ),
              Text(
                "Beden : M",
                style: TextStyle(color: Colors.grey),
              )
            ],
          ),
          Row(
            children: const <Widget>[
              Text(
                "Beden Tablosu",
                style: TextStyle(fontSize: 12.0, color: Colors.blue),
              )
            ],
          ),
        ],
      ),
    );
  }

  _buildInfo() {
    TabController tabController = TabController(length: 2, vsync: this);
    return Container(
      child: Column(
        children: <Widget>[
          TabBar(
            controller: tabController,
            tabs: const <Widget>[
              Tab(
                child:
                Text("Ürün Bilgisi", style: TextStyle(color: Colors.black)),
              ),
              Tab(
                child: Text("Yıkama Bilgisi",
                    style: TextStyle(color: Colors.black)),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
            height: 40.0,
            child: TabBarView(
              controller: tabController,
              children: const <Widget>[
                Text("DIŞ : FON KUMAŞI 100% polyester KAPLAMA:100% poliüretan ",

                    style: TextStyle(color: Colors.black)),
                Text(
                  "Kuru Temizleme",
                  style: TextStyle(color: Colors.black),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  _buildButtomNavigation() {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 50.0,
      child: Row(
        mainAxisAlignment:MainAxisAlignment.center ,
        children: <Widget>[
          Flexible(
            fit: FlexFit.tight, //yapışık
            flex: 1,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.grey,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.center ,
                children: const <Widget>[
                  Icon(
                    Icons.list,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    "Favorilere Ekle",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
          Flexible(
            fit: FlexFit.tight, //yapışık
            flex: 1,
            child: RaisedButton(
              onPressed: () {},
              color: Colors.blueAccent,
              child: Row(
                mainAxisAlignment:MainAxisAlignment.center ,
                children: const <Widget>[
                  Icon(
                    Icons.card_travel,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 4.0,
                  ),
                  Text(
                    "Sepete Ekle ",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
