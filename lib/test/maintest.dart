import 'package:flutter/material.dart';

List<String> strItems = <String>[
  '图标 -> keyboard', '图标 -> print',
  '图标 -> router', '图标 -> pages',
  '图标 -> zoom_out_map', '图标 -> zoom_out',
  '图标 -> youtube_searched_for', '图标 -> wifi_tethering',
  '图标 -> wifi_lock', '图标 -> widgets',
  '图标 -> weekend', '图标 -> web',
  '图标 -> accessible', '图标 -> ac_unit',
];

List<Icon> iconItems = <Icon>[
  new Icon(Icons.keyboard), new Icon(Icons.print),
  new Icon(Icons.router), new Icon(Icons.pages),
  new Icon(Icons.zoom_out_map), new Icon(Icons.zoom_out),
  new Icon(Icons.youtube_searched_for), new Icon(Icons.wifi_tethering),
  new Icon(Icons.wifi_lock), new Icon(Icons.widgets),
  new Icon(Icons.weekend), new Icon(Icons.web),
  new Icon(Icons.accessible), new Icon(Icons.ac_unit),
];




void main()=>runApp(MyApp6(
  strItem: strItems,
  iconItem:iconItems,
));
const contentV = "该runApp函数接受给定的Widget并使其成为widget树的根。 在此示例中，widget树由两个widget:Center(及其子widget)和Text组成。框架强制根widget覆盖整个屏幕，这意味着文本“Hello, world”会居中显示在屏幕上。文本显示的方向需要在Text实例中指定，当使用MaterialApp时，文本的方向将自动设定，稍后将进行演示";


class MyApp6 extends StatelessWidget{
  List<Icon> iconItem;
  List<String> strItem;

  MyApp6({
    Key key,
    @required this.iconItem,
    @required this.strItem
  }):super(key :key);

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return MaterialApp(
      title: "listView的学习和时间",
      color: Colors.red,
      home: Scaffold(
        appBar:
        AppBar(
          title:new Text( "你好啊，卡卡罗特"),
        ),
        body: new ListView.builder(
            itemCount: iconItems.length,

            itemBuilder: (context,index){
              return new Container(
                child: new Column(
                  children: <Widget>[
                    buildListData(context, strItem[index], iconItem[index]),
                    new Divider()
                  ],

                ),
              );
            }
        ),

      ),//home相当于一个手机界面的主题

    );
  }
}



class MyApp61 extends StatelessWidget{

  List<String> strItems = <String>[
    '图标 -> keyboard', '图标 -> print',
    '图标 -> router', '图标 -> pages',
    '图标 -> zoom_out_map', '图标 -> zoom_out',
    '图标 -> youtube_searched_for', '图标 -> wifi_tethering',
    '图标 -> wifi_lock', '图标 -> widgets',
    '图标 -> weekend', '图标 -> web',
    '图标 -> accessible', '图标 -> ac_unit',
  ];

  List<Icon> iconItems = <Icon>[
    new Icon(Icons.keyboard), new Icon(Icons.print),
    new Icon(Icons.router), new Icon(Icons.pages),
    new Icon(Icons.zoom_out_map), new Icon(Icons.zoom_out),
    new Icon(Icons.youtube_searched_for), new Icon(Icons.wifi_tethering),
    new Icon(Icons.wifi_lock), new Icon(Icons.widgets),
    new Icon(Icons.weekend), new Icon(Icons.web),
    new Icon(Icons.accessible), new Icon(Icons.ac_unit),
  ];

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return MaterialApp(
      title: "listView的学习和时间",
      home: Scaffold(
        appBar:
        AppBar(
          title:new Text( "你好啊，卡卡罗特"),
        ),
        body: new ListView.builder(
            itemCount: iconItems.length,

            itemBuilder: (context,index){
//              return new Container(
//                child: new Column(
//                  children: <Widget>[
//                    buildListData(context, strItems[index], iconItems[index]),
//                    new Divider()
//                  ],
//                ),
//              );
              return Container(
                height: 100.0,
                margin: EdgeInsets.all(20.0),
                child: new ListTile(
                  leading:new Icon(Icons.add_to_queue),
                  title: new Text("123412"),
                ),

                decoration: new BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage( "http://img8.zol.com.cn/bbs/upload/23765/23764201.jpg")),
//                  leading:new Icon(Icons.add_to_queue),
//                  title: new Text("${items[index]}"),

                ),
              );
            }
        ),

      ),//home相当于一个手机界面的主题

    );
  }
}


Widget buildListData(BuildContext context, String strItem, Icon iconItem) {
  return new ListTile(
    isThreeLine: false,
    leading: iconItem,
    title: new Text(strItem),
    trailing: new Icon(Icons.keyboard_arrow_right),
    onTap: () {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return new AlertDialog(
            title: new Text(
              'ListViewDemo',
              style: new TextStyle(
                color: Colors.black54,
                fontSize: 18.0,
              ),
            ),
            content: new Text('您选择的item内容为:$strItem'),
          );
        },
      );
    },
  );
}




class MyApp66 extends StatelessWidget{

  final List<String> items;


  MyApp66({Key key,@required this.items}):super(key:key);

  @override
  Widget build(BuildContext context) {

    var divideListItem = ListTile.divideTiles(
        context: context, color: Colors.pink, tiles: null)
        .toList();


    // TODO: implement build
    return MaterialApp(
      title: "listView的学习和时间",
      home: Scaffold(
        appBar:
        AppBar(
          title:new Text( "你好啊，卡卡罗特"),
        ),
        body: new ListView.builder(
            itemCount: items.length,

            itemBuilder: (context,index){
              return new ListTile(
                leading:new Icon(Icons.add_to_queue),
                title: new Text("${items[index]}"),
              );
//              return Container(
//                height: 100.0,
//                margin: EdgeInsets.all(20.0),
//                child: new ListTile(
//                  leading:new Icon(Icons.add_to_queue),
//                  title: new Text("${items[index]}"),
//                ),
//
//                decoration: new BoxDecoration(
//                  image: DecorationImage(
//                      image: NetworkImage( "http://img8.zol.com.cn/bbs/upload/23765/23764201.jpg")),
////                  leading:new Icon(Icons.add_to_queue),
////                  title: new Text("${items[index]}"),
//
//                ),
//              );
            }
        ),

      ),//home相当于一个手机界面的主题

    );
  }

}
class MyApp666 extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "listView的学习和时间",
      home: Scaffold(
        appBar:
        AppBar(
          title:new Text( "你好啊，卡卡罗特"),
        ),
        body: new ListView(
          children:<Widget>[
            new ListTile(
              leading:new Icon(Icons.add_to_queue),
              title: new Text("123"),
            ),
            new ListTile(
              leading:new Icon(Icons.add_to_queue),
              title: new Text("456"),
            ),
            new ListTile(
              leading:new Icon(Icons.add_to_queue),
              title: new Text("789"),
            ),
            new ListTile(
              leading:new Icon(Icons.add_to_queue),
              title: new Text("123"),
            ),
            new Image.network("http://img1.imgtn.bdimg.com/it/u=3750818050,2146170313&fm=26&gp=0.jpg"),
            new Image.network("http://img5.imgtn.bdimg.com/it/u=3777081349,3160144334&fm=200&gp=0.jpg"),
            new Image.network("http://p2.pccoo.cn/bbs/20150413/2015041311184488656014s.jpg"),
            new Image.network("http://e.hiphotos.baidu.com/image/pic/item/2f738bd4b31c8701bd496a2c2d7f9e2f0608ff79.jpg"),
          ],
        ),

      ),//home相当于一个手机界面的主题

    );
  }

}

class MyHorientatinLsit extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "listView的学习和时间",
      home: Scaffold(
          appBar:
          AppBar(
            title:new Text( "你好啊，卡卡罗特"),
          ),
          body: Center(
            child: Container(
                height: 200,
                child:MyList()
            ),
          )

      ),//home相当于一个手机界面的主题

    );
  }

}



class MyList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new ListView(
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        new Container(
          width: 180,
          color: Colors.black26,
        ),
        new Container(
          width: 180,
          color: Colors.orange,
        ),
        new Container(
          width: 180,
          color: Colors.red,
        ),
        new Container(
          width: 180,
          color: Colors.purple,
        )
      ],
    );
  }
}






class MyApp5 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: "listView的学习和时间",
      home: Scaffold(
        appBar:
        AppBar(
          title:new Text( "你好啊，卡卡罗特"),
        ),
        body: new ListView(
          children:<Widget>[
            new ListTile(
              leading:new Icon(Icons.add_to_queue),
              title: new Text("123"),
            ),
            new ListTile(
              leading:new Icon(Icons.add_to_queue),
              title: new Text("456"),
            ),
            new ListTile(
              leading:new Icon(Icons.add_to_queue),
              title: new Text("789"),
            ),
            new ListTile(
              leading:new Icon(Icons.add_to_queue),
              title: new Text("123"),
            ),
            new Image.network("http://img1.imgtn.bdimg.com/it/u=3750818050,2146170313&fm=26&gp=0.jpg"),
            new Image.network("http://img5.imgtn.bdimg.com/it/u=3777081349,3160144334&fm=200&gp=0.jpg"),
            new Image.network("http://p2.pccoo.cn/bbs/20150413/2015041311184488656014s.jpg"),
            new Image.network("http://e.hiphotos.baidu.com/image/pic/item/2f738bd4b31c8701bd496a2c2d7f9e2f0608ff79.jpg"),
          ],
        ),

      ),//home相当于一个手机界面的主题

    );
  }

}



class myApp4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Paint paint = Paint();
    paint.color = Color.fromARGB(125, 12, 125, 12);
    return MaterialApp(
      title:"测试ContainWeight",
      home: Scaffold(
        appBar: AppBar(
          title: Text("hollo world 标题"),
        ),
        body: Center(
//          child: new Text("dadad"),
            child:Container(
                child: new Image.network("http://www.guangyuanol.cn/uploads/allimg/190128/12435242L-0.jpg",
                  scale: 2,
                  fit: BoxFit.fitWidth,
//                  width: 200,
//                  height: 200,
//                color: Colors.greenAccent,
                  repeat: ImageRepeat.noRepeat,
                  colorBlendMode: BlendMode.src,
                ),
                width: 400,
                height: 300,
//               color: Colors.green,
                alignment: Alignment.center,
                decoration:  new BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.blue,
                        Colors.yellow
                      ]
                  ),
                )
            )
        ),
      ),
    );

  }
}



class myApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Paint paint = Paint();
    paint.color = Color.fromARGB(125, 12, 125, 12);
    return MaterialApp(
      title:"测试ContainWeight",
      home: Scaffold(
        appBar: AppBar(
          title: Text("hollo world 标题"),
        ),
        body: Center(
//          child: new Text("dadad"),
            child:Container(
                child: new Text("卡卡罗特卡卡罗特卡卡罗特卡卡罗特卡卡罗特卡卡罗特",
                  style: TextStyle(
                    color: Color.fromARGB(255, 12, 255,8),
                    fontSize: 19,
                    background:paint,

                  ),
                  textAlign: TextAlign.start,
                ),
                width:500,
                height:400,
//              color: Colors.red,
                padding:  const EdgeInsets.fromLTRB(20,150,10,20),
                alignment:   Alignment.topLeft,
                margin: const EdgeInsets.fromLTRB(10,20,20,10),

                decoration:  new BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [
                        Colors.red,
                        Colors.blue,
                        Colors.purple
                      ]
                  ),
                )
            )
        ),
      ),
    );

  }
}












class MyApp2 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Paint paint =   Paint();
    paint.color = Color(0xFFFF4600);

    return MaterialApp(
      title: "hello ,welcome to come to yuer fultter",
      home: Scaffold(
        appBar: AppBar(
          title: Text("hollo world 标题"),
        ),
        body: Center(
          child: Text(contentV,
              textAlign:TextAlign.start,
              maxLines: 10,
              textDirection:TextDirection.ltr,
              style:TextStyle(
//              color: Color(0xFFFF00FF),
                color: Color.fromARGB(255,13, 255,0),
                fontSize:12,
                fontWeight:FontWeight.normal,
                fontStyle:FontStyle.italic,
                letterSpacing:1,
                wordSpacing:112,
                textBaseline:TextBaseline.ideographic,
                height:1.2,
//              locale,
//              foreground,
//                background:paint,
//              shadows,
                decoration:TextDecoration.overline,
                decorationColor:Color.fromARGB(255,255, 44,0),
                decorationStyle:TextDecorationStyle.solid,//绘制文本装饰的样式（例如，虚线）。
//              debugLabel:r
              ),
//            locale://此属性很少设置，用于选择区域特定字形的语言环境
//            softWrap:false, //某一行中文本过长，是否需要换行。默认为true，如果为false，则文本中的字形将被定位为好像存在无限的水平空间
              overflow :TextOverflow.ellipsis,
              textScaleFactor:1.5,//每个逻辑像素的字体像素数  例如，如果文本比例因子为1.5，则文本将比指定的字体大小大50％。
              semanticsLabel:"Text semanticsLabel"
          ),
        ),
      ),
    );
  }

}
