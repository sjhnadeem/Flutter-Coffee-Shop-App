import 'package:flutter/material.dart';
import 'package:coffee_ordering_app/scr/color.dart';

void main() => runApp(CoffeeShopApp());

class CoffeeShopApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CoffeeHomePage(),
    );
  }
}

class CoffeeHomePage extends StatefulWidget {
  @override
  _CoffeeHomePageState createState() => _CoffeeHomePageState();
}

class _CoffeeHomePageState extends State<CoffeeHomePage> {
  var selectedItem = 'All Products';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(top: 15.0),
              child: IconButton(
                  icon: Icon(Icons.arrow_back), color: black, onPressed: () {}),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0, right: 15.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Colors.transparent),
                  ),
                  Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: coffee_color), //!TODO Change Color
                    child: Center(
                      child: Icon(
                        Icons.shopping_basket,
                        color: white,
                        size: 20.0,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 25.0,
                    right: 30.0,
                    child: Container(
                      height: 20.0,
                      width: 20.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: red), //TODO Change Color
                      child: Center(
                        child: Text(
                          "2",
                          style: TextStyle(
                            fontFamily: 'Raleway',
                            color: white, //TODO Change Color
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(15.0),
          child: Text(
            'Starbucks Coffee',
            style: TextStyle(
                fontFamily: 'Raleway',
                fontSize: 22.0,
                fontWeight: FontWeight.bold),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 15.0),
          child: Container(
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildItem('All Products', 48),
                _buildItem('Hot Coffees', 26),
                _buildItem('Cold Coffees', 22),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 15.0, top: 15.0, bottom: 10.0),
          child: Container(
            height: MediaQuery.of(context).size.height - 400.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                _buildCoffeeItem('images/coffee.jpg', 'Caffè Americano',
                    'Hot Coffees', '4.99'),
                _buildCoffeeItem('images/coffee1.jpg', 'Café Latte',
                    'Espresso Shots', '5.99'),
                _buildCoffeeItem(
                    'images/coffee2.jpg', 'Cappuccino', 'Flat Whites', '6.99'),
                _buildCoffeeItem(
                    'images/coffee3.jpg', 'Espresso', 'Brewed Coffees', '7.99'),
                _buildCoffeeItem('images/coffee4.jpg', 'Caramel Macchiato',
                    'Cold Brews', '3.99'),
                _buildCoffeeItem('images/coffee5.jpg', 'Turkish Coffee',
                    'Iced Espresso Shots', '5.99'),
                _buildCoffeeItem('images/coffee6.jpg', 'Macchiato',
                    'Iced Macchiatos', '8.99'),
              ],
            ),
          ),
        ),
      ]),
    );
  }

  _buildCoffeeItem(
      String imgPath, String productName, String productType, String price) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: Container(
        width: 225.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15.0),
          color: white,
          boxShadow: [
            BoxShadow(
              color: grey.withOpacity(0.3),
              spreadRadius: 4.0,
              blurRadius: 4.0,
            ),
          ],
        ),
        child: Stack(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 200.0,
                width: 225.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15.0),
                        topRight: Radius.circular(15.0)),
                    image: DecorationImage(
                        image: AssetImage(imgPath), fit: BoxFit.cover)),
              ),
              SizedBox(height: 25.0),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  productName,
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0),
                ),
              ),
              SizedBox(height: 5.0),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  productType,
                  style: TextStyle(
                      fontFamily: 'Raleway', fontSize: 14.0, color: grey),
                ),
              ),
              SizedBox(height: 15.0),
              Padding(
                  padding: EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    height: 0.4,
                    color: grey.withOpacity(0.4),
                  )),
              SizedBox(height: 15.0),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      '\$' + price,
                      style: TextStyle(
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.bold,
                          fontSize: 19.0),
                    ),
                    InkWell(
                        onTap: () {},
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: grey.withOpacity(0.1)),
                          child: Center(child: Icon(Icons.add, color: grey)),
                        ))
                  ],
                ),
              )
            ],
          )
        ]),
      ),
    );
  }

  _buildItem(String productName, int count) {
    return Padding(
      padding: EdgeInsets.only(right: 15.0, top: 10.0, bottom: 10.0, left: 4.0),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: switchHighlight(productName),
          boxShadow: [
            BoxShadow(
                blurRadius: 4.0,
                spreadRadius: 2.0,
                color: switchShadow(productName)),
          ],
        ),
        height: 50.0,
        width: 125.0,
        child: InkWell(
          onTap: () {
            selectedProduct(productName);
          },
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 10.0,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    count.toString(),
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                        color: switchHighlightColor(productName)),
                  ),
                ),
                SizedBox(height: 7.0),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Text(
                    productName,
                    style: TextStyle(
                        fontFamily: 'Raleway',
                        fontSize: 15.0,
                        color: switchHighlightColor(productName)),
                  ),
                ),
              ]),
        ),
      ),
    );
  }

  selectedProduct(prodName) {
    setState(() {
      selectedItem = prodName;
    });
  }

  switchHighlight(prodName) {
    if (prodName == selectedItem) {
      return coffee_color;
    } else {
      return coffee_color0.withOpacity(0.3);
    }
  }

  switchHighlightColor(prodName) {
    if (prodName == selectedItem) {
      return white;
    } else {
      return black;
    }
  }

  switchShadow(prodName) {
    if (prodName == selectedItem) {
      return Color(0xFF116D51).withOpacity(0.4);
    } else {
      return Colors.transparent;
    }
  }
}
