// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:utter/constants/colors.dart';

class CardProduct extends StatefulWidget {
  const CardProduct({
    Key? key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.buttonColour,
    required this.stock,
  }) : super(key: key);
  final String image, title, subtitle, stock;
  final int buttonColour;
  @override
  State<CardProduct> createState() => _CardProductState();
}

class _CardProductState extends State<CardProduct> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: 15),
      child: Container(
        height: size.height * 0.2,
        width: size.width * 0.96,
        decoration: BoxDecoration(
            color: cardColour, borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.only(left: size.width * 0.04),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  image: DecorationImage(
                      image: AssetImage(widget.image), fit: BoxFit.fill),
                ),
                height: 120,
                width: 100,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Text(
                      widget.title,
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
                      child: Text(
                        widget.subtitle,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10),
                    child: Container(
                      height: 30,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(widget.buttonColour),
                      ),
                      child: Center(
                        child: Text(
                          widget.stock,
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 30, top: 22),
              child: Align(
                alignment: Alignment.topRight,
                child: Icon(
                  Icons.delete_rounded,
                  color: Colors.red,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
