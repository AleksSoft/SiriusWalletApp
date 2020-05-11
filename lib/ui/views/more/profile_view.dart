import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        elevation: 0.0,
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          _buildAccountData(context),
          SizedBox(height: 16.0),
          _buildPersonalData(context),
        ],
      ),
    );
  }

  Column _buildAccountData(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'Account level',
          style: Theme.of(context).textTheme.headline6,
        ),
        ListTile(
          contentPadding: EdgeInsets.all(0.0),
          leading: Icon(
            Icons.check_circle_outline,
            color: Colors.blueAccent,
            size: 40.0,
          ),
          title: Text('Beginner'),
          subtitle: Text('Verified'),
          trailing: OutlineButton(
            onPressed: () {},
            borderSide: BorderSide(color: Colors.blueAccent),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4.0),
            ),
            textColor: Colors.blueAccent,
            child: Text('Upgrade'),
          ),
        ),
      ],
    );
  }

  Column _buildPersonalData(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          'Personal data',
          style: Theme.of(context).textTheme.headline6,
        ),
        ListTile(
          contentPadding: EdgeInsets.all(0.0),
          title: Text('Full Name'),
          subtitle: Text('Anton R.'),
        ),
        ListTile(
          contentPadding: EdgeInsets.all(0.0),
          title: Text('Email'),
          subtitle: Text('anton.rozdorozhniuk@swisschain.io'),
        ),
        ListTile(
          contentPadding: EdgeInsets.all(0.0),
          title: Text('Contact Phone'),
          subtitle: Text('+38 093 800 88 88'),
        ),
        ListTile(
          contentPadding: EdgeInsets.all(0.0),
          title: Text('Country'),
          subtitle: Text('UK'),
        ),
      ],
    );
  }
}
