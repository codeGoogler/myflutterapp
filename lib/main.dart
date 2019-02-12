import 'package:flutter/material.dart';

void main()=>runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: "hello ,welcome to come to yuer fultter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("hollo world 标题"),
        ),
        body: Center(
          child: Text("Welocome to study Flutter imopr"),
        ),
      ),
    );
  }

}
