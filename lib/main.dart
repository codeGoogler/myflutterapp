import 'dart:io';

import 'package:flutter/material.dart';
import 'package:myflutterapp/main/pullToRefreshStatefulWidget.dart';


//这个是主程序入口类
void main()=>runApp(MyApp());



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      title: "主程序入口",
      theme: new ThemeData(
//          primaryColor: Colors.red,
//          accentColor: Colors.yellow
//        primaryColor: Colors.lightBlue[800],
//        accentColor: Colors.cyan[600],
        primarySwatch: Colors.blue,
      ),
      home: new MyAppHome(),
      routes:  <String ,WidgetBuilder>{

        "/pullToRefresh": (_) => new PullToRefreshStatefulWidget()
      }
    );
  }

}
//当您描述的用户界面部分不依赖于对象本身中的配置信息和其中构件被夸大的BuildContext时，无状态小部件很有用。对于可以动态改变的组合，例如由于具有内部时钟驱动状态，或取决于某些系统状态，请考虑使用StatefulWidget。
class MyAppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("主程序入口"),
          //appBar学习参考博客：https://blog.csdn.net/liu__520/article/details/83956108#7bottom_widget_151
          backgroundColor: Colors.red,
          //中主要内容，通常显示为当前界面的标题文字。
          leading: new Image.network(
              "https://upload-images.jianshu.io/upload_images/14371339-2e7996a398500eae.png"),
          //在标题前面显示的一个控件，在首页通常显示应用的 logo；在其他界面通常显示为返回按钮。
          actions: list,
          //一个 Widget 列表，代表 Toolbar 中所显示的菜单，对于常用的菜单，通常使用 IconButton 来表示；对于不常用的菜单通常使用PopupMenuButton 来显示为三个点，点击后弹出二级菜单。
          // bottom:PreferredSize(child: new Center(child: new Text('bottom')),preferredSize: Size(30, 30)) ,//一个 AppBarBottomWidget 对象，通常是 TabBar。用来在 Toolbar 标题下面显示一个 Tab 导航栏。
          bottom: PreferredSize(child: Container(
            child: new Center(child: new Text('bottom')),
            color: Colors.yellow,), preferredSize: Size(30, 30)),
          //一个 AppBarBottomWidget 对象，通常是 TabBar。用来在 Toolbar 标题下面显示一个 Tab 导航栏。
//      elevation://纸墨设计中控件的 z 坐标顺序，默认值为 4，对于可滚动的 SliverAppBar，当 SliverAppBar 和内容同级的时候，该值为 0， 当内容滚动
//      SliverAppBar://变为 Toolbar 的时候，修改 elevation 的值。
//      flexibleSpace://一个显示在 AppBar 下方的控件，高度和 AppBar 高度一样，可以实现一些特殊的效果，该属性通常在 SliverAppBar 中使用
//      backgroundColor://Appbar 的颜色，默认值为 ThemeData.primaryColor。该值通常和下面的三个属性一起使用：
//      brightness://App bar 的亮度，有白色和黑色两种主题，默认值为 ThemeData.primaryColorBrightness
//      iconTheme://App bar 上图标的颜色、透明度、和尺寸信息。默认值为 ThemeData.primaryIconTheme
          textTheme: new TextTheme(),
          //App bar 上的文字样式。默认值为 ThemeData.primaryTextTheme
          centerTitle: true // 标题是否居中显示，默认值根据不同的操作系统，显示方式不一样
      ),
      body: new MyHomeListPage(
        item: <Map<String,String>>[
              {"id":"1", "title": '下拉刷新', 'type': 'pullToRefresh',"imageUrl":"https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1189507460,2869812183&fm=26&gp=0.jpg"},
              {"id":"2", "title": '下拉刷新', 'type': 'pullToRefresh',"imageUrl":"https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1189507460,2869812183&fm=26&gp=0.jpg"},
              {"id":"3", "title": '下拉刷新', 'type': 'pullToRefresh',"imageUrl":"https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1189507460,2869812183&fm=26&gp=0.jpg"},
              {"id":"4", "title": '下拉刷新', 'type': 'pullToRefresh',"imageUrl":"https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1189507460,2869812183&fm=26&gp=0.jpg"},
              {"id":"5", "title": '下拉刷新', 'type': 'pullToRefresh',"imageUrl":"https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1189507460,2869812183&fm=26&gp=0.jpg"},
              {"id":"6", "title": '下拉刷新', 'type': 'pullToRefresh',"imageUrl":"https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1189507460,2869812183&fm=26&gp=0.jpg"},
              {"id":"7", "title": '下拉刷新', 'type': 'pullToRefresh',"imageUrl":"https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1189507460,2869812183&fm=26&gp=0.jpg"},
              {"id":"8", "title": '下拉刷新', 'type': 'pullToRefresh',"imageUrl":"https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1189507460,2869812183&fm=26&gp=0.jpg"},
              {"id":"9", "title": '下拉刷新', 'type': 'pullToRefresh',"imageUrl":"https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1189507460,2869812183&fm=26&gp=0.jpg"},
              {"id":"10", "title": '下拉刷新', 'type': 'pullToRefresh',"imageUrl":"https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1189507460,2869812183&fm=26&gp=0.jpg"},
              {"id":"10", "title": '下拉刷新', 'type': 'pullToRefresh',"imageUrl":"https://ss1.bdstatic.com/70cFuXSh_Q1YnxGkpoWK1HF6hhy/it/u=1189507460,2869812183&fm=26&gp=0.jpg"},
        ],

      ),
    );
  }

}

class MyHomeListPage extends StatelessWidget{

  List<Map<String,String>> item;

  MyHomeListPage({
    Key key,
    @required this.item,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return ListView.builder(itemBuilder: (_,int index) => createItemBuild(context,item[index],index));
  }
}

createItemBuild(BuildContext context,Map<String,String> map,int index) {
  print("=============123===================$map");
      return new GestureDetector(
        onTap: onTapClick(context,map),

        child: new Column(
          children: <Widget>[

          new Container(
            height: 100,
            margin: EdgeInsets.all(9),
            alignment: Alignment.center,
//            child: new Text(map["id"]),
              child:new Row(
                  mainAxisAlignment:MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    new Text(map["id"]),
                    new Text(map["title"]),
                    new Image.network(map["imageUrl"])
                  ],
              )
          ),
            Divider(
              height: 0.5,
            )
          ],

        ),
      );
  }


    onTapClick(BuildContext context,Map<String,String> map){
      if(map["id"] ==  "1"){
//        Navigator.of(context).pushNamed('/pullToRefresh');
      }
  }


//class Bean {
//
//       String title;
//      String id;
//      String type;
//      String imageUrl;
//      Bean({
//        Key key,
//        @required this.title,
//        @required this.id,
//        @required this.imageUrl,
//        @required this.type,
//      }):super(key:key)
//}

     List<Widget> list = <Widget>[
       new Text("1"),
       new Text("2"),
       new Text("3"),
       new Text("4"),
       new Text("5"),
       new Text("6"),
       new Text("7"),
       new Text("8"),
       new Text("9"),
       new Text("10")
     ];

   void ss(){
     //当给到一个不存在的文件地址时会发生异常，这时候可以利用catchError捕获此异常。
    //then().catchError() 模式就是异步的 try-catch。
     File f = new File("/Users/enjoy/a1.txt");
     f.readAsString().then((content) {
       print(content);
     }).catchError((e, s) {
       print(s);
     });
   }
//}

onError() {
}
