import 'package:demo/MinePage/HelpSupport.dart';
import 'package:demo/MinePage/Language.dart';
import 'package:demo/MinePage/Privacy.dart';
import 'package:demo/MinePage/UserGuide.dart';
import 'package:demo/MinePage/UserSetting.dart';
import 'package:flutter/material.dart';
import 'MinePageCustomListTile.dart';

class MyTeamController extends StatelessWidget {

  final String userName = 'UserName';
  final double leftRightMargin = 10.0;
  final double iconSize = 24.0;
  final double titleLeftAlignment = -1.25;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          title: Text('My Account', style: TextStyle(fontSize: 15.0)),
          elevation: 0.0, // AppBar drop shadow
          actions: <Widget>[
            FlatButton(
              child: Text('Log Out', style: TextStyle(fontSize: 12.0, color: Colors.white),),
              onPressed: (){},
            ),
          ],
        ),
      ),
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(color: Theme.of(context).primaryColor, height: 60,),
          Container( // Main White Box
            margin: EdgeInsets.fromLTRB(leftRightMargin, 20, leftRightMargin, leftRightMargin),
            height: 190,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
            ),
          ),
          Container( // 头像
            width: 46.0,
            height: 46.0,
            decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                image: NetworkImage('https://f1.pngfuel.com/png/359/957/100/face-icon-user-profile-user-account-avatar-icon-design-head-silhouette-neck-png-clip-art.png'),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(Radius.circular(23.0)),
              border: Border.all(color: Colors.white, width: 2.0),
            ),
          ),
          Container( // UserName
            margin: EdgeInsets.only(top: 56),
            child: Text('UserName', style: TextStyle(color: Color(0xFF4a494a))),
          ),
          Container( // Divider
            margin: EdgeInsets.only(top: 82),
            height: 0.5,
            width: MediaQuery.of(context).size.width * 0.6,
            color: Color(0xff969696),
          ),
          Container( // Amount
            margin: EdgeInsets.only(top: 105),
            child: Text('Gold Member', style: TextStyle(color: Colors.amber, fontSize: 26)),
          ),
          Container( // Divider
            margin: EdgeInsets.only(top: 155),
            height: 0.6,
            width: MediaQuery.of(context).size.width,
            color: Color(0xFFd9dde1),
          ),
          Container( // Wallet Button
              margin: EdgeInsets.only(top: 160),
              width: 180,
              child: FlatButton.icon(
                  onPressed: (){},
                  icon: Icon(Icons.account_balance_wallet, color: Colors.red,),
                  label: Text('Wallet', style: TextStyle(color: Color(0xFF4a494a)),))),
          Container( // Help & Support
            margin: EdgeInsets.fromLTRB(leftRightMargin, 220, leftRightMargin, leftRightMargin),
            height: 90,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MinePageCustomListTile(
                  backgroundColor: Colors.white,
                  icon: Icon(Icons.help),
                  title: 'Help & Support',
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => HelpSupport())); },
                ),
                Container(color: Color(0xff969696), height: 0.4,),
                MinePageCustomListTile(
                  backgroundColor: Colors.white,
                  icon: Icon(Icons.supervised_user_circle),
                  title: 'User Guide',
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => UserGuide())); },
                ),
              ],
            ),
          ),
          Container( // Other Options
            margin: EdgeInsets.fromLTRB(leftRightMargin, 320, leftRightMargin, leftRightMargin),
            height: 135,
            padding: EdgeInsets.only(top: 10, bottom: 10),
            decoration: BoxDecoration(
              border: Border.all(width: 0.5, color: Color(0xFFa7a7a9)),
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(4.0)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                MinePageCustomListTile(
                  backgroundColor: Color(0xFFd9dde1),
                  icon: Icon(Icons.settings),
                  title: 'Setting',
                  trailing: Icon(Icons.keyboard_arrow_right),
                  optionalTrailing: Container(
                    height: 20,
                    width: 28,
                    decoration: BoxDecoration(
                      color: Color(0xffed2748),
                      borderRadius: BorderRadius.all(Radius.elliptical(10, 10)),
                    ),
                    child: Align(alignment: Alignment.center, child: Text('1', style: TextStyle(fontSize: 12, color: Colors.white),)),
                  ),
                  onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => UserSetting())); },
                ),
                Container(color: Color(0xff969696), height: 0.4,),
                MinePageCustomListTile(
                  backgroundColor: Color(0xFFd9dde1),
                  icon: Icon(Icons.fingerprint),
                  title: 'Privacy',
                  trailing: Icon(Icons.keyboard_arrow_right),
                  onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Privacy())); },
                ),
                Container(color: Color(0xff969696), height: 0.4,),
                MinePageCustomListTile(
                  backgroundColor: Color(0xFFd9dde1),
                  icon: Icon(Icons.language),
                  title: 'Language',
                  trailing: Icon(Icons.keyboard_arrow_right),
                  optionalTrailing: Text('English'),
                  onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => Language())); },
                ),
              ],
            ),
          ),
          Container( // Version Label
            alignment: Alignment.bottomCenter,
            padding: EdgeInsets.only(bottom: 5),
            child: SafeArea(child: Text('Version：1.0.0  Build：00001', style: TextStyle(color: Color(0xff7a7a7a), fontSize: 12),)),
          )
        ],
      ),
      backgroundColor: Color(0xFFd9dde1),
    );
  }

}