import 'package:flutter/material.dart';

class Privacy extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          title: Text('Privacy', style: TextStyle(fontSize: 15.0)),
          elevation: 0.0, // AppBar drop shadow
        ),
      ),
    );
  }
}