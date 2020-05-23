import 'package:flutter/material.dart';

class HelpSupport extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          title: Text('Help & Support', style: TextStyle(fontSize: 15.0)),
          elevation: 0.0, // AppBar drop shadow
        ),
      ),
    );
  }
}