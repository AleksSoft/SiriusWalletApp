import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  final IconData icon;
  final Widget trailing;
  final String title;
  final String subtitle;
  final Color color;
  final Color iconColor;
  final bool showDivider;
  final VoidCallback onTap;

  const MenuTile({
    Key key,
    @required this.icon,
    @required this.title,
    this.subtitle,
    this.trailing,
    this.color = Colors.blueAccent,
    this.iconColor = Colors.white,
    this.showDivider = true,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              dense: true,
              leading: _buildLeading(),
              title: Text(
                title,
                style: Theme.of(context).textTheme.button,
              ),
              subtitle: subtitle != null ? Text(subtitle) : null,
              trailing: trailing ?? SizedBox.shrink(),
            ),
            showDivider
                ? Divider(
                    height: 0.5,
                    indent: 72.0,
                    endIndent: 24.0,
                  )
                : SizedBox.shrink(),
          ],
        ),
      ),
    );
  }

  Widget _buildLeading() {
    return Card(
      elevation: 0.0,
      color: color,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Padding(
        padding: EdgeInsets.all(5.0),
        child: Icon(icon, color: iconColor, size: 20.0),
      ),
    );
  }
}
