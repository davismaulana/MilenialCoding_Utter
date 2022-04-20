// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:utter/constants/colors.dart';
import 'package:utter/dummy/isi_product.dart';
import 'package:utter/widgets/product_card.dart';

class RedesignUtter extends StatefulWidget {
  const RedesignUtter({Key? key}) : super(key: key);

  @override
  State<RedesignUtter> createState() => _RedesignUtterState();
}

class _RedesignUtterState extends State<RedesignUtter> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: Text("New Products"),
        icon: Icon(Icons.lock_outline_rounded),
      ),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5,
        centerTitle: true,
        leading: Icon(
          Icons.webhook_rounded,
          color: Colors.blue,
        ),
        title: Text(
          "Products",
          style: TextStyle(color: Colors.blue, fontSize: 25),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20),
                child: Center(
                  child: IsiProduct(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
