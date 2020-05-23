import 'package:flutter/material.dart';

class MainController extends StatefulWidget{

  final List<String> sportTypeList;
  final List<Widget> sportTypeViewList;

  const MainController({Key key, @required this.sportTypeList, @required this.sportTypeViewList}) : super(key: key);

  @override
  _MainControllerState createState() => _MainControllerState();
}

class _MainControllerState extends State<MainController> with SingleTickerProviderStateMixin {

  static final double sportTypeIconSize = 20.0;
  TabController _tabController;
  List<Tab> tabList = List<Tab>();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: widget.sportTypeList.length, vsync: this);
    createTabFromSportTypeList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: Container (
          height: 58,
          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
          color: Color(0xFF3d4051),
          child: Align(
            alignment: Alignment.topLeft,
            child: TabBar(
              controller: _tabController,
              isScrollable: true,
              labelStyle: TextStyle(fontSize: 12.0),
              labelColor: Colors.white,
              unselectedLabelColor: Color(0x80FFFFFF),
              indicatorColor: Colors.transparent,
              tabs: tabList,
            ),
          ),
        ),
      ),
      body: TabBarView(controller: _tabController ,children: widget.sportTypeViewList),
    );
  }

 void createTabFromSportTypeList() {
    tabList.clear();
    int i = 0;
    widget.sportTypeList.forEach((sport) {
      IconData icon;
      switch(i) {
        case 0: icon = Icons.filter_1; break;
        case 1: icon = Icons.filter_2; break;
        case 2: icon = Icons.filter_3; break;
        case 3: icon = Icons.filter_4; break;
        case 4: icon = Icons.filter_5; break;
        case 5: icon = Icons.filter_6; break;
        case 6: icon = Icons.filter_7; break;
        case 7: icon = Icons.filter_8; break;
        case 8: icon = Icons.filter_9; break;
        case 9: icon = Icons.filter_9_plus; break;
      }

      Tab newTab = Tab(child: Column(children: [Icon(icon), Text(sport)]));
      tabList.add(newTab);
      i++;
    });
  }

}