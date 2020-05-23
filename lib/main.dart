import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'MainPage/MainPageTabButton.dart';
import 'MainPage/MainController.dart';
import 'MinePage/MyTeamController.dart';

void main() {
  runApp(MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xffab1713),
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin<HomePage> {
  int _currentIndex = 0;
  static final double leftMenuSize = 24.0;
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final mainPageTabButtonList = [
    MainPageTabButton('Home', Icon(Icons.home)),
    MainPageTabButton('News', Icon(Icons.fiber_new)),
    MainPageTabButton('Popular', Icon(Icons.whatshot)),
    MainPageTabButton('Bookmark', Icon(Icons.bookmark)),
  ];

  static List<String> newsType = ['Catagory 1','Catagory 2','Catagory 3','Catagory 4','Catagory 5'];
  static List<String> popularType = ['Popular 1','Popular 2','Popular 3','Popular 4','Popular 5','Popular 6','Popular 7','Popular 8',];
  static List<String> bookmarkType = ['BC 1','BC 2','BC 3'];

  static List<Widget> newsTypeViews = [
    Container(color: Colors.red,),
    Container(color: Colors.yellow,),
    Container(color: Colors.deepOrangeAccent,),
    Container(color: Colors.purpleAccent,),
    Container(color: Colors.brown,),
  ];

  static List<Widget> popularTypeViews = [
    Container(color: Colors.greenAccent,),
    Container(color: Colors.yellow,),
    Container(color: Colors.deepOrangeAccent,),
    Container(color: Colors.purpleAccent,),
    Container(color: Colors.brown,),
    Container(color: Colors.amber,),
    Container(color: Colors.blueGrey,),
    Container(color: Colors.greenAccent,),
  ];

  static List<Widget> bookmarkTypeViews = [
    Container(color: Colors.amber,),
    Container(color: Colors.blueGrey,),
    Container(color: Colors.greenAccent,),
  ];

  final mainControllerList = [
    Container(color: Colors.blue,),
    MainController(sportTypeList: newsType, sportTypeViewList: newsTypeViews),
    MainController(sportTypeList: popularType, sportTypeViewList: popularTypeViews),
    MainController(sportTypeList: bookmarkType, sportTypeViewList: bookmarkTypeViews),
  ];

  List<ListTile> leftMenuList = <ListTile>[
    ListTile(leading: Image(image: AssetImage('assets/LeftMenu/SN_00018@2x.png'),height: leftMenuSize), title: Align(alignment: Alignment(-1.2,0), child:Text('Menu 1')), trailing: Icon(Icons.keyboard_arrow_right)),
    ListTile(leading: Image(image: AssetImage('assets/LeftMenu/00001@2x.png'),height: leftMenuSize), title: Align(alignment: Alignment(-1.2,0), child:Text('Menu 2')), trailing: Icon(Icons.keyboard_arrow_right)),
    ListTile(leading: Image(image: AssetImage('assets/LeftMenu/SN_00111@2x.png'),height: leftMenuSize), title: Align(alignment: Alignment(-1.2,0), child:Text('Menu 3')), trailing: Icon(Icons.keyboard_arrow_right)),
    ListTile(leading: Image(image: AssetImage('assets/LeftMenu/SN_00002@2x.png'),height: leftMenuSize), title: Align(alignment: Alignment(-1.2,0), child:Text('Menu 4')), trailing: Icon(Icons.keyboard_arrow_right)),
    ListTile(leading: Image(image: AssetImage('assets/LeftMenu/SN_00005@2x.png'),height: leftMenuSize), title: Align(alignment: Alignment(-1.2,0), child:Text('Menu 5')), trailing: Icon(Icons.keyboard_arrow_right)),
    ListTile(leading: Image(image: AssetImage('assets/LeftMenu/SN_00004@2x.png'),height: leftMenuSize), title: Align(alignment: Alignment(-1.2,0), child:Text('Menu 6')), trailing: Icon(Icons.keyboard_arrow_right)),
    ListTile(leading: Image(image: AssetImage('assets/LeftMenu/SN_00003@2x.png'),height: leftMenuSize), title: Align(alignment: Alignment(-1.2,0), child:Text('Menu 7')), trailing: Icon(Icons.keyboard_arrow_right)),
    ListTile(leading: Image(image: AssetImage('assets/LeftMenu/SN_00016@2x.png'),height: leftMenuSize), title: Align(alignment: Alignment(-1.2,0), child:Text('Menu 8')), trailing: Icon(Icons.keyboard_arrow_right)),
    ListTile(leading: Image(image: AssetImage('assets/LeftMenu/SN_00020@2x.png'),height: leftMenuSize), title: Align(alignment: Alignment(-1.2,0), child:Text('Menu 9')), trailing: Icon(Icons.keyboard_arrow_right)),
    ListTile(leading: Image(image: AssetImage('assets/LeftMenu/SN_00022@2x.png'),height: leftMenuSize), title: Align(alignment: Alignment(-1.2,0), child:Text('Menu 10')), trailing: Icon(Icons.keyboard_arrow_right)),
    ListTile(leading: Image(image: AssetImage('assets/LeftMenu/SN_00012@2x.png'),height: leftMenuSize), title: Align(alignment: Alignment(-1.2,0), child:Text('Menu 11')), trailing: Icon(Icons.keyboard_arrow_right)),
    ListTile(leading: Image(image: AssetImage('assets/LeftMenu/SN_00006@2x.png'),height: leftMenuSize), title: Align(alignment: Alignment(-1.2,0), child:Text('Menu 12')), trailing: Icon(Icons.keyboard_arrow_right)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        title: Text('My App'),
        centerTitle: true, // Centre Text for Android
        leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () => _scaffoldKey.currentState.openDrawer()
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.account_circle),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => MyTeamController()));
              }
          ),
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              height: 110,
              width: double.infinity,
              child: DrawerHeader(
                  child: Align(alignment: Alignment.center ,child: Text('My Menu', style: TextStyle(color: Colors.white, fontSize: 16),)), decoration: BoxDecoration (color: Theme.of(context).primaryColor)
              ),
            ),
            Expanded(
                child: MediaQuery.removePadding(
                  context: (context),
                  removeTop: true,
                  child: ListView.separated(
                    itemCount: leftMenuList.length,
                    itemBuilder: (BuildContext context, int index) {
                      return leftMenuList[index];
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider();
                    },
                  ),
                )
            )
          ],
        ),
      ),
//      floatingActionButton: ,
      body: SafeArea(
        top: false,
        child: IndexedStack(
          index: _currentIndex,
          children: mainControllerList,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Theme.of(context).primaryColor,
        selectedItemColor: Color(0xFFFFFFFF),
        unselectedItemColor: Color(0x80FFFFFF),
        currentIndex: _currentIndex,
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: mainPageTabButtonList.map((MainPageTabButton tabButton) {
          return BottomNavigationBarItem(
              icon: tabButton.icon,
              activeIcon: tabButton.activeIcon,
              title: Text(
                tabButton.title,
              ));
        }).toList(),
      ),
    );
  }
}