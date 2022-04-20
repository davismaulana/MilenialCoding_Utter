import 'package:flutter/material.dart';

class Nyoba extends StatefulWidget {
  const Nyoba({ Key? key }) : super(key: key);

  @override
  State<Nyoba> createState() => _NyobaState();
}

class _NyobaState extends State<Nyoba> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: IntrinsicWidth(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Tombol Pendek'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Tombol Lebih Panjang'),
                  ),
                ],
              ),
            ),
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.home,
                size: 70,
              )
            ],
          ),],
        ),
    );
  }
}