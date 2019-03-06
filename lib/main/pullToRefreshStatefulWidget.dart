import 'package:flutter/material.dart';

class PullToRefreshStatefulWidget extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return    new PullToRefreshStatefulWidgetRoute();
  }

}

class PullToRefreshStatefulWidgetRoute extends State<PullToRefreshStatefulWidget>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new Scaffold(
      appBar: AppBar(
          leading: Image.network("http://p2.pccoo.cn/bbs/20150413/2015041311184488656014s.jpg"),
        title: Text("卡卡罗特"),
      ),
      body: new Text("新一页的内容"),
    );
  }

}