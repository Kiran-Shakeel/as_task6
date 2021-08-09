import 'package:as_task6/routes/routes.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          statusBarBrightness: Brightness.dark),
    );
    return Scaffold(
        backgroundColor: Color(0xFFECEFF1),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              StackPart(),
              SetText(),
            ],
          ),
        ));
  }
}

class StackPart extends StatelessWidget {
  const StackPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            viewportFraction: 1.0,
            height: MediaQuery.of(context).size.height * 0.6,
            autoPlay: true,
            enableInfiniteScroll: true,
          ),
          items: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(45),
                  bottomRight: Radius.circular(45),
                ),
                child: Image.network(
                  "https://images.unsplash.com/photo-1618736001194-cb0ee068d596?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1534&q=80",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(45),
                  bottomRight: Radius.circular(45),
                ),
                child: Image.network(
                  "https://images.unsplash.com/photo-1612096536102-93f503aa2419?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGJsdWUlMjBiYWNrZ3JvdW5kJTIwd2l0aCUyMGhvb2R8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(45),
                  bottomRight: Radius.circular(45),
                ),
                child: Image.network(
                  "https://images.unsplash.com/photo-1619608175870-c1e30923576c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fGJsdWUlMjBiYWNrZ3JvdW5kJTIwd2l0aCUyMGhvb2R8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60",
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(top: 30, left: 5, right: 5),
          child: Row(
            children: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    CupertinoIcons.back,
                    color: Colors.white,
                  )),
              Spacer(),
              IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, MyRoutes.cartRoute);
                  },
                  icon: Icon(
                    CupertinoIcons.cart,
                    color: Colors.white,
                  )),
            ],
          ),
        )
      ],
    );
  }
}

class SetText extends StatefulWidget {
  const SetText({Key? key}) : super(key: key);

  @override
  _SetTextState createState() => _SetTextState();
}

class _SetTextState extends State<SetText> {
  @override
  Widget build(BuildContext context) {
    String price = "30.99";
    return Padding(
      padding: EdgeInsets.only(top: 15, left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Eywa Hoodie",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          Padding(
              padding: EdgeInsets.only(top: 8),
              child: Text(
                "\$ $price",
                style: TextStyle(fontSize: 20),
              )),
          Padding(
            padding: EdgeInsets.only(top: 30),
            child: Text(
              "Colour",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 10),
            width: MediaQuery.of(context).size.width * 0.5,
            //color: Colors.black,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ColorBar(color: Colors.white),
                ColorBar(color: Colors.grey),
                ColorBar(color: Colors.black),
                ColorBar(color: Colors.blue)
              ],
            ),
          ),
          SetSize(),
          Padding(
            padding: EdgeInsets.only(top: 50, right: 20, bottom: 10),
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child:
                  ElevatedButton(onPressed: () {}, child: Text("Add to Cart")),
            ),
          )
        ],
      ),
    );
  }
}

class ColorBar extends StatelessWidget {
  final Color color;
  const ColorBar({Key? key, required this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: color,
      ),
    );
  }
}

class SetSize extends StatefulWidget {
  const SetSize({Key? key}) : super(key: key);

  @override
  _SetSizeState createState() => _SetSizeState();
}

class _SetSizeState extends State<SetSize> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Size",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: EdgeInsets.only(right: 20, top: 10),
            child: Container(
              color: Colors.grey,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SetSizeContent(size: "S"),
                  SetSizeContent(size: "M"),
                  SetSizeContent(size: "L"),
                  SetSizeContent(size: "XL"),
                  SetSizeContent(size: "XXL"),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class SetSizeContent extends StatefulWidget {
  final String size;
  const SetSizeContent({Key? key, required this.size}) : super(key: key);

  @override
  _SetSizeContentState createState() => _SetSizeContentState();
}

class _SetSizeContentState extends State<SetSizeContent> {
  int check = 0;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Border.all(
            color: Colors.blue,
          );
          check = 1;
        });
      },
      child: Container(
        width: 50,
        height: 40,
        child: Center(
          child: Text(
            widget.size,
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
