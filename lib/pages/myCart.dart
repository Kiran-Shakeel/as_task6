import 'package:as_task6/model/itemodel.dart';
import 'package:flutter/material.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Text(
            "My Cart",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 20, color: Colors.black),
          ),
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            CartItem(
              title: "Hoodie",
              subtitile: "Black - L",
              price: "99.0",
              number: "2",
              img:
                  "https://images.unsplash.com/photo-1554411529-ee36dfde51b9?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",
            ),
            CartItem(
              title: "Comfort",
              subtitile: "Green - L",
              price: "999.0",
              number: "1",
              img:
                  "https://images.unsplash.com/photo-1517942420142-6a296f9ee4b1?ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8aG9vZGllfGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
            ),
            CartItem(
              title: "Denim",
              subtitile: "Blue - S",
              price: "20.0",
              number: "3",
              img:
                  "https://images.unsplash.com/photo-1578768079052-aa76e52ff62e?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTZ8fGhvb2RpZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
            ),
            CartItem(
              title: "Shirt",
              subtitile: "Black - L",
              price: "97.0",
              number: "3",
              img:
                  "https://images.unsplash.com/photo-1620780327051-f7ad06f5b1e0?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDJ8fGhvb2RpZXxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
            ),
          ]),
        ),
        bottomNavigationBar: Padding(
            padding: EdgeInsets.all(16),
            child: Container(
              height: 100,
              child: Stack(children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Total",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        "\$${236}",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 10,
                  right: 2,
                  left: 2,
                  child: Container(
                      height: 40,
                      width: MediaQuery.of(context).size.width,
                      child: ElevatedButton(
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ))),
                          onPressed: () {},
                          child: Text("Checkout"))),
                )
              ]),
            )));
  }
}

class CartItem extends StatelessWidget {
  final String img, title, subtitile, price, number;
  const CartItem(
      {Key? key,
      required this.img,
      required this.title,
      required this.subtitile,
      required this.price,
      required this.number})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(children: [
        Row(children: [
          Container(
            width: 100,
            height: 100,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.network(
                img,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Flexible(
            child: Column(children: [
              ListTile(
                title: Text(title),
                subtitle: Text(subtitile),
              ),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "\$$price",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Container(
                        child: Row(
                      children: [
                        Text("- "),
                        Container(
                          height: 20,
                          width: 20,
                          color: Colors.grey,
                          child: Center(child: Text(number)),
                        ),
                        Text(" +")
                      ],
                    ))
                  ],
                ),
              )
            ]),
          ),
        ]),
      ]),
    );
  }
}
