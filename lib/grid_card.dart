// ignore_for_file: prefer_const_constructors

import 'dart:ui';

import 'package:flutter/material.dart';

class GridCard extends StatefulWidget {
  const GridCard({Key? key}) : super(key: key);

  @override
  State<GridCard> createState() => _GridCardState();
}

class _GridCardState extends State<GridCard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.only(top: 10),
            child: ListTile(
              title: Text(
                "Gambar " + index.toString(),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              leading: Image.network(
                  "https://docs.flutter.dev/assets/images/dash/dash-fainting.gif"),
              subtitle: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut interdum orci a tellus suscipit, porta faucibus mi rhoncus. Curabitur porta mi nibh. Nulla feugiat sed mi in dapibus.",
                maxLines: 3,
              ),
            ),
          );
        },
      ),
    );
  }
}
