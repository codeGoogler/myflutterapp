import 'package:flutter/material.dart';

void main()=>runApp(myApp3());

class myApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title:"测试ContainWeight",
        home: Scaffold(
          appBar: AppBar(
            title: Text("hollo world 标题"),
          ),
          body: Center(
            child: new Text("asdfasdfsafds"),
          ),
    ),
    );

  }
}