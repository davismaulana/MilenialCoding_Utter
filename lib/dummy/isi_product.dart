// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:utter/widgets/product_card.dart';

class IsiProduct extends StatefulWidget {
  const IsiProduct({Key? key}) : super(key: key);

  @override
  State<IsiProduct> createState() => _IsiProductState();
}

class _IsiProductState extends State<IsiProduct> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          CardProduct(
            image: "assets/images/download.jpg",
            title: "Brand New Shoes",
            subtitle: "SH-231",
            buttonColour: 0xFFE53935,
            stock: 'Stock 1',
          ),
          CardProduct(
            image: "assets/images/download.jpg",
            title: "Brand New Shoes",
            subtitle: "SH-231",
            buttonColour: 0xFF66BB6A,
            stock: 'Stock 8',
          ),
          CardProduct(
            image: "assets/images/download.jpg",
            title: "Brand New Shoes",
            subtitle: "SH-231",
            buttonColour: 0xFF66BB6A,
            stock: 'Stock 8',
          ),
        ],
      ),
    );
  }
}
