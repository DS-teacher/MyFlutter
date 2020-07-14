import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        child: AppBar(title: Text('菜单')
      ),
      preferredSize: Size.fromHeight(45)
    ),
    body: Container(
      child: ListView(
        children: <Widget>[
          _buildImage(),
          _buildTitleSection(),
          _buildButtonSection(),
          _buildTextSection(),
          //底部按钮
          RaisedButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return Container(
                    height: 200,
                    color: Colors.blue[100],
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          const Text("下单成功！",style:TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                          const Text("份数：01份",style:TextStyle(fontSize: 14)),
                          const Text("价格：38元",style:TextStyle(fontSize: 14)),
                          RaisedButton(
                            child: const Text('购买'),
                            onPressed: () => Navigator.pop(context)
                          )
                        ],
                      ),
                    )
                  );
                }
              );
            },
            child: Text('立即下单！'),
          )
        ],
      ),
    ),
    drawer: MyDrawer.getInstance()
    );
  }

  _buildImage() {
    return Image.network(
      'https://cp1.douguo.com/upload/caiku/6/7/6/690x390_671cb15a5561be1fb3a93c9a5e262066.jpg',
      fit: BoxFit.contain,
    );
  }

  // 标题区
  _buildTitleSection() {
    return Container(
      margin: EdgeInsets.all(22),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("陈皮糖醋排骨",style:TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
                Text('一份：38元，半份：20元')
              ],
            ),
          ),
          Icon(
            Icons.check_circle,
            color: Colors.red[400],
            size: 26,
          ),
          Text(' 41觉得很赞')
        ],
      ),
    );
  }

  // 按钮区
  _buildButtonSection() {
    return Container(
      padding: EdgeInsets.only(left: 30, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: <Widget>[
              Icon(
                Icons.call,
                color: Colors.orange[400],
              ),
              Container(margin: EdgeInsets.all(8), child: Text('立即预约'))
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.zoom_in,
                color: Colors.orange[400],
              ),
              Container(margin: EdgeInsets.all(8), child: Text('查看大图'))
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.share,
                color: Colors.orange[400],
              ),
              Container(margin: EdgeInsets.all(8), child: Text('分享得礼'))
            ],
          ),
          Column(
            children: <Widget>[
              Icon(
                Icons.plus_one,
                color: Colors.orange[400],
              ),
              Container(margin: EdgeInsets.all(8), child: Text('我要点赞'))
            ],
          )
        ],
      ),
    );
  }

  // 文本区
  _buildTextSection() {
    return Container(
        padding: EdgeInsets.all(24),
        child: Text(
          '    陈皮糖醋排骨是什么？陈皮糖醋排骨是怎么回事呢？今天小编就带大家来看看究竟是怎么一回事。',
          textAlign: TextAlign.justify,
        )
    );
  }
}

//左导航
class MyDrawer extends StatelessWidget {
  static final MyDrawer _myDrawer = MyDrawer();

  MyDrawer();
  factory MyDrawer.getInstance() {
    return _myDrawer;
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[_getDrawerHeader(), ..._getListTiles(context)],
      ),
    );
  }

  DrawerHeader _getDrawerHeader() {
    return DrawerHeader(
      padding: EdgeInsets.fromLTRB(16, 8, 16, 8),
      child: Column(
        children: <Widget>[
          Icon(
            Icons.mood,
            color: Colors.white,
            size: 96
          ),
          Text(
            '我 的 账 户',
            style: TextStyle(fontSize: 15),
          ),
          Text(
            '\n个性签名：六十分万岁！',
            style:TextStyle(fontSize: 10)
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.blue[400],
      ),
    );
  }

  List<Widget> _getListTiles(BuildContext context) {
    return [
      ListTile(
        leading: Icon(Icons.assistant),
        trailing: Icon(Icons.chevron_right),
        title: Text('开通会员'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(Icons.monetization_on),
        trailing: Icon(Icons.chevron_right),
        title: Text('我的钱包'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      Divider(),
      ListTile(
        leading: Icon(Icons.favorite),
        title: Text('我的收藏'),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      ListTile(
        leading: Icon(Icons.photo_album),
        title: Text('我的订单'),
        onTap: () {
          Navigator.pop(context);
        },
      )
    ];
  }
}