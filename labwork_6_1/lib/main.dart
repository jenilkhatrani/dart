import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(

    home: page(),
  ))
}
class page extends StatefulWidget {
  const page({super.key});

  @override
  State<page> createState() => _pageState();
}

class _pageState extends State<page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          height: 500,
          width: 500,
          color: Colors.black,
        ),
      ),
    );
  }
}
