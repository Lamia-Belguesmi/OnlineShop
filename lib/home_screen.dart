
import 'package:flutter/material.dart';
import 'package:online_shop/constraints.dart';
import 'package:online_shop/poducts.dart';
import 'package:online_shop/product_body.dart';
import 'body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: buildAppBar(),
        body:  Body(),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 5,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: kTextColor,
        ),
        iconSize: 30,
        onPressed: () {},
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart,
            color: kTextColor,
          ),
          iconSize: 30,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
            color: kTextColor,
          ),
          iconSize: 30,
        ),
        SizedBox(
          width: kDefaultPosition / 2,
        ),
      ],
    );
  }
}
