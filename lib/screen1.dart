// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:utter/grid_card.dart';
import 'package:utter/nyoba_grid.dart';

class ScreenAwal extends StatefulWidget {
  const ScreenAwal({Key? key}) : super(key: key);

  @override
  State<ScreenAwal> createState() => _ScreenAwalState();
}

class _ScreenAwalState extends State<ScreenAwal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Demo SingleChildLayout"),
      ),
      body: Container(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(18.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black, width: 5),
                  color: Colors.blue,
                ),
                width: double.infinity,
                height: 300,
                child: Center(
                  child: Text(
                    'Hello World',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => NyobaGrid(),
                  ),
                );
              },
              child: Text("tombol pendek"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (c) => GridCard(),
                  ),
                );
              },
              child: Text("tombol yang panjang panjang panjang banget"),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Expanded(
                    child: Icon(
                      Icons.home,
                      size: 70,
                    ),
                  ),
                  Expanded(
                    child: Icon(
                      Icons.home,
                      size: 70,
                    ),
                  ),
                  Expanded(
                    child: Icon(
                      Icons.home,
                      size: 70,
                    ),
                  ),
                  Expanded(
                    child: Icon(
                      Icons.home,
                      size: 70,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
