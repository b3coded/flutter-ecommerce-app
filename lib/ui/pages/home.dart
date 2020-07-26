import 'package:ecommerceapp/ui/components/button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            header,
            renderList("News"),
            renderList("Top of the Week"),
            renderList("Top of the Month"),
            renderList("Old School"),
            highlights,
          ],
        ),
      ),
    );
  }

  static TextStyle highlightStyle({Color color = Colors.white}) =>
      TextStyle(color: color, fontSize: 35, fontWeight: FontWeight.w800);

  Widget highlights = Container(
    child: Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 400,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/home_highlight_1.png"),
                    fit: BoxFit.cover),
              ),
            ),
            Container(
              width: double.infinity,
              height: 400,
              padding: EdgeInsets.only(bottom: 40, right: 20),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  colors: [Colors.black.withOpacity(0.6), Colors.transparent],
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "New collection",
                    style: highlightStyle(),
                  ),
                ],
              ),
            )
          ],
        ),
        Container(
          width: double.infinity,
          height: 400,
          child: Row(
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(bottom: 20, left: 20),
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Color(0xFF1E1F28),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "Summer sale",
                            style: highlightStyle(color: Colors.pink),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 40, left: 20),
                      width: double.infinity,
                      height: 200,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/home_highlight_2.png"),
                              fit: BoxFit.cover)),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            "Black",
                            style: highlightStyle(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.only(top: 40, left: 20),
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage("assets/images/home_highlight_3.png"),
                          fit: BoxFit.cover)),
                  child: Text(
                    "Men's hats",
                    style: highlightStyle(),
                  ),
                ),
              )
            ],
          ),
        )
      ],
    ),
  );

  static Widget inactiveStar = Padding(
      padding: EdgeInsets.only(right: 2),
      child: Icon(
        FontAwesome5.star,
        color: Colors.grey,
      ));
  static Widget activeStar = Padding(
      padding: EdgeInsets.only(right: 2),
      child: Icon(
        FontAwesome5Solid.star,
        color: Colors.yellow,
      ));

  static Widget newsItem = Container(
    width: 180,
    height: 300,
    margin: EdgeInsets.only(right: 10, left: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset("assets/images/home_product_2.png",
              fit: BoxFit.cover, width: 180, height: 230),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Row(
            children: <Widget>[
              activeStar,
              activeStar,
              activeStar,
              activeStar,
              inactiveStar
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 5),
          child: Text("Evening Dress"),
        ),
        Text("12 \$"),
      ],
    ),
  );

  Widget renderList(String title) => Container(
        padding: EdgeInsets.symmetric(vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(bottom: 20),
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                title,
                style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 320,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  newsItem,
                  newsItem,
                  newsItem,
                  newsItem,
                  newsItem,
                ],
              ),
            )
          ],
        ),
      );

  Widget header = Stack(
    children: <Widget>[
      Container(
        width: double.infinity,
        height: 500,
        child: Image.asset(
          "assets/images/home_banner.png",
          fit: BoxFit.cover,
        ),
      ),
      Container(
        width: double.infinity,
        height: 500,
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              "Fashion \nSale",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
            ),
            Button(
              text: "Check",
              onPress: () {},
              fullWidth: false,
            )
          ],
        ),
      ),
    ],
  );
}
