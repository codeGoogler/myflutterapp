import 'package:flutter/material.dart';

void main()=>runApp(myApp4());
const contentV = "该runApp函数接受给定的Widget并使其成为widget树的根。 在此示例中，widget树由两个widget:Center(及其子widget)和Text组成。框架强制根widget覆盖整个屏幕，这意味着文本“Hello, world”会居中显示在屏幕上。文本显示的方向需要在Text实例中指定，当使用MaterialApp时，文本的方向将自动设定，稍后将进行演示";





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
