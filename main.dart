import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TUGAS MOBILE PROGRAMMING',
      home: GridViewPage(),
    );
  }
}

class GridViewPage extends StatelessWidget {
  final List<String> _numbers = [
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Eleven",
    "Twelve",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('GRIDVIEW - BIMA IKRAR BHAKTI - 201011401821'),
      ),
      body: GridView.count(
        crossAxisCount: 3,
        childAspectRatio: 1.5,
        mainAxisSpacing: 6.5,
        crossAxisSpacing: 6.5,
        children: List.generate(12, (index) {
          Color color;
          switch (index) {
            case 8:
              color = Colors.lightBlue[900]!;
              break;
            case 9:
              color = Colors.lightBlue[100]!;
              break;
            case 10:
              color = Colors.lightGreen[300]!;
              break;
            case 11:
              color = Colors.lightGreen[200]!;
              break;
            default:
              color = Color.lerp(
                Colors.lightBlue[100]!,
                Colors.green[900]!,
                index / 11,
              )!;
          }
          return Container(
            color: color,
            child: Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  _numbers[index],
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}