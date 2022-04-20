// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class NyobaGrid extends StatefulWidget {
  const NyobaGrid({ Key? key }) : super(key: key);

  @override
  State<NyobaGrid> createState() => _NyobaGridState();
}

class _NyobaGridState extends State<NyobaGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(crossAxisCount: 3, children: [
        Container(
          color: Colors.yellow,
          height: 500,
          child: Center(
            child: Text("1", style: TextStyle(fontSize: 30),),
          ),
        ),
        Container(
          color: Colors.blue,
          height: 500,
          child: Center(
            child: Text("2", style: TextStyle(fontSize: 30),),
          ),
        ),
        Container(
          color: Colors.green,
          height: 500,
          child: Center(
            child: Text("3", style: TextStyle(fontSize: 30),),
          ),
        ),
        Container(
          color: Colors.red,
          height: 500,
          child: Center(
            child: Text("4", style: TextStyle(fontSize: 30),),
          ),
        ),
      ],),
    );
  }
}