import 'package:flutter/material.dart';
import 'package:online_shop/poducts.dart';
import 'package:online_shop/product_body.dart';

import 'constraints.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;

  const DetailsScreen({required this.product});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: product.color,
        appBar: buildAppBar(context),
        body: ProductBody(
          product: product,
        ),
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
        iconSize: 30,
        onPressed: () {
          Navigator.pop(context);
        },
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.shopping_cart,
            // color: kTextColor,
          ),
          iconSize: 30,
        ),
        IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.search,
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
