import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final Color color;
  final bool chevronVisible;
  final VoidCallback onTap;

  const MenuTile({
    Key key,
    @required this.icon,
    @required this.title,
    this.subtitle = '',
    this.color = Colors.blueAccent,
    this.chevronVisible = true,
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
              trailing: _buildTrailing(context),
            ),
            Divider(
              height: 0.5,
              indent: 72.0,
              endIndent: 24.0,
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTrailing(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          this.subtitle,
          style: Theme.of(context).textTheme.caption,
        ),
        this.chevronVisible ? Icon(Icons.chevron_right) : SizedBox.shrink()
      ],
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
        child: Icon(
          icon,
          color: Colors.white,
          size: 20.0,
        ),
      ),
    );
  }
}
