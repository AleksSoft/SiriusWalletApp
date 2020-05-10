import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoreTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Color color;
  final bool chevronVisible;

  const MoreTile({
    Key key,
    @required this.icon,
    @required this.title,
    this.color = Colors.blueAccent,
    this.chevronVisible = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            leading: Card(
              elevation: 0.0,
              color: color,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(6.0),
                child: Icon(
                  icon,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
            ),
            title: Text(title),
            trailing:
                chevronVisible ? Icon(Icons.chevron_right) : SizedBox.shrink(),
          ),
          Divider(
            height: 0.5,
            indent: 72.0,
            endIndent: 24.0,
          )
        ],
      ),
    );
  }
}
