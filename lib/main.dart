import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ScaffoldRoute(title: 'Scaffold'),
    );
  }
}

class ScaffoldRoute extends StatefulWidget {
  const ScaffoldRoute({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<ScaffoldRoute> createState() => _ScaffoldRouteState();
}

class _ScaffoldRouteState extends State<ScaffoldRoute> {

  int _selectedIndex = 1;

  @override
  Widget build(BuildContext context) {
    /**
     * Scaffold
     * 一个完整的路由页可能会包含导航栏、抽屉菜单(Drawer)以及底部 Tab 导航菜单等。
     * Scaffold 是一个路由页的骨架，我们使用它可以很容易地拼装出一个完整的页面。
     *
     * */
    return Scaffold(
      appBar: AppBar( //导航栏
        title: Text("App Name"),
        leading: Builder(builder: (context) {
          return IconButton(
              icon: Icon(Icons.dashboard, color: Colors.white,),
              onPressed: () {
              //  打开抽屉菜单
                Scaffold.of(context).openDrawer();
              },
          );
        }),
        actions: [ //导航栏右侧菜单
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.share)
          ),
        ],
      ),
      // drawer: MyDrawer(), //抽屉
      bottomNavigationBar: BottomNavigationBar( //底部导航
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
          BottomNavigationBarItem(icon: Icon(Icons.business), title: Text('Business')),
          BottomNavigationBarItem(icon: Icon(Icons.school), title: Text('School')),
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.blue,
        onTap:_onItemTapped,
      ),
      floatingActionButton: FloatingActionButton( //悬浮按钮
          child: Icon(Icons.add),
          onPressed:_onAdd
      ),
      // body: Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: <Widget>[
      //
      //     ],
      //   ),
      // ),
    );
  }
}

/**
 * 按照固定资产等经济用途分类，可以归类反映和监督企业生产经营用固定资产和非生产经营用固定资产之间，以及生产经营用各类固定资产之间的
 * 组成和变化情况，借以考核和分析企业固定资产的利用情况，促使企业合理的配置固定资产，充分发挥其效用。
 * */

void _onItemTapped(int index) {
  // setState(() {
  //   _selectedIndex = index;
  // });
}

void _onAdd(){

}














