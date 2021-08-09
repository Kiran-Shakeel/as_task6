import 'package:as_task6/routes/routes.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:outline_search_bar/outline_search_bar.dart';
import 'package:expansion_tile_card/expansion_tile_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
            children: [StackPart(), TrendingList(), Categories()],
          ),
        ));
  }
}

class StackPart extends StatefulWidget {
  const StackPart({Key? key}) : super(key: key);

  @override
  _StackPartState createState() => _StackPartState();
}

class _StackPartState extends State<StackPart> {
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    String x = "30.99";
    return Stack(
      children: [
        CarouselSlider(
          options: CarouselOptions(
              viewportFraction: 1.0,
              height: MediaQuery.of(context).size.height * 0.6,
              autoPlay: true,
              enableInfiniteScroll: true,
              onPageChanged: (index, reason) {
                setState(() {
                  _current = index;
                });
              }),
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
          padding: EdgeInsets.only(top: 30, left: 20, right: 20),
          child: OutlineSearchBar(
            searchButtonIconColor: Colors.white,
            searchButtonPosition: SearchButtonPosition.leading,
            backgroundColor: Colors.white.withOpacity(0.1),
            hintText: "What are you looking for?",
            hintStyle: TextStyle(color: Colors.white),
            borderColor: Colors.transparent,
          ),
        ),
        Positioned(
            bottom: 110,
            left: 20,
            child: Text(
              "Recommendations",
              style: TextStyle(color: Colors.grey, fontSize: 15),
            )),
        Positioned(
            bottom: 65,
            left: 20,
            child: Text(
              "Women Blue Denim",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            )),
        Positioned(
            bottom: 30,
            left: 20,
            child: Text(
              "\$$x",
              style: TextStyle(
                color: Colors.blue,
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            )),
      ],
    );
  }
}

class TrendingList extends StatelessWidget {
  const TrendingList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String shirt1 =
        "https://images.unsplash.com/photo-1554411529-ee36dfde51b9?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mjh8fGJsdWUlMjBiYWNrZ3JvdW5kJTIwd2l0aCUyMGhvb2R8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
    String shirt2 =
        "https://images.unsplash.com/photo-1551545978-ab5ce4e49b99?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80";
    String shirt3 =
        "https://images.unsplash.com/photo-1607130376312-28008c237043?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MzJ8fGJsdWUlMjBiYWNrZ3JvdW5kJTIwd2l0aCUyMGhvb2R8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
    String shirt4 =
        "https://images.unsplash.com/photo-1619608175870-c1e30923576c?ixid=MnwxMjA3fDB8MHxzZWFyY2h8NDB8fGJsdWUlMjBiYWNrZ3JvdW5kJTIwd2l0aCUyMGhvb2R8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";
    String shirt5 =
        "https://images.unsplash.com/photo-1612096536102-93f503aa2419?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjN8fGJsdWUlMjBiYWNrZ3JvdW5kJTIwd2l0aCUyMGhvb2R8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60";

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20, left: 20, right: 20),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Text(
              "Trending ",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, MyRoutes.itemRoute);
              },
              child: Text(
                "Show All",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            )
          ]),
        ),
        Padding(
          padding: EdgeInsets.only(top: 20),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                TrendingContent(
                    shirtName: "Russ Shirt", path: shirt1, price: "99"),
                TrendingContent(
                    shirtName: "Comfort Shirt", path: shirt2, price: "89"),
                TrendingContent(
                    shirtName: "Dress Shirt", path: shirt3, price: "200"),
                TrendingContent(
                    shirtName: "Dress Shirt", path: shirt4, price: "200"),
                TrendingContent(
                    shirtName: "Dress Shirt", path: shirt5, price: "200")
              ],
            ),
          ),
        )
      ],
    );
  }
}

class TrendingContent extends StatelessWidget {
  final shirtName, price, path;
  const TrendingContent(
      {Key? key,
      required this.shirtName,
      required this.path,
      required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    String k = price;
    return Padding(
      padding: EdgeInsets.only(left: 20),
      child: Column(
        children: [
          Container(
            height: 110,
            width: 110,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10), topRight: Radius.circular(10)),
              child: Image.network(
                path,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(10),
                  bottomLeft: Radius.circular(10)),
            ),
            width: 110,
            child: Padding(
              padding: EdgeInsets.only(left: 8, bottom: 5, top: 5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    shirtName,
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Text("\$$k",
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
      child: Column(
        children: [
          Row(
            children: [
              Text(
                "Categories",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              Spacer(),
              Text(
                "View all",
                style:
                    TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 20),
            child: ExpansionTileCard(
              leading: Icon(CupertinoIcons.person, color: Colors.black),
              title: Row(children: [
                Text(
                  "Women",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "(220 items)",
                      style: TextStyle(color: Colors.grey),
                    ))
              ]),
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Text("Expanded"))
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20, top: 20),
            child: ExpansionTileCard(
              leading: Icon(CupertinoIcons.person, color: Colors.black),
              title: Row(children: [
                Text(
                  "Men",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Text(
                      "(228 items)",
                      style: TextStyle(color: Colors.grey),
                    ))
              ]),
              children: [
                Padding(
                    padding: EdgeInsets.only(top: 20, bottom: 20),
                    child: Text(
                      "Expended",
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
