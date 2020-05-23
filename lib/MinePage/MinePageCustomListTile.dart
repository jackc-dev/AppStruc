import 'package:flutter/material.dart';

class MinePageCustomListTile extends StatelessWidget{
  final Color backgroundColor;
  final Icon icon;
  final String title;
  final Icon trailing;
  final Widget optionalTrailing;
  final GestureTapCallback onPressed;

  final double padding = 10.0;
  final double iconSize = 24.0;

  const MinePageCustomListTile ({Key key, this.backgroundColor, this.icon, this.title, this.trailing, this.optionalTrailing, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: backgroundColor,
        width: MediaQuery.of(context).size.width * 0.86,
        child: Stack(
          alignment: Alignment.centerLeft,
          children: <Widget>[
            Container(
              child: this.icon,
            ),
            Container(
              margin: EdgeInsets.only(left: padding + iconSize),
              child: Text(this.title),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: this.trailing,
            ),
            Container(
              alignment: Alignment.centerRight,
              margin: EdgeInsets.only(right: iconSize),
              child: this.optionalTrailing,
            )
          ],
        ),
      ),
    );
  }
}