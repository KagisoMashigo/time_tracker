import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/common_widgets/show_alert_dialog.dart';
import 'package:time_tracker_flutter_course/services/auth.dart';
import 'package:time_tracker_flutter_course/services/auth_provider.dart';

class HomePage extends StatelessWidget {


  Future<void> _signOut(BuildContext context) async {
  final auth = AuthProvider.of(context);
    try {
      await auth.signOut();
    } catch (e) {
      print(e.toString());
    }
  }

  Future<void> _confirmSignOut(BuildContext context) async {
    final confirmSignOut = await showAlertDialog(
      context,
      title: 'Logout',
      content: 'Are you sure you want to log out?',
      defaultActionText: 'Logout',
      cancelActionText: 'Cancel',
    );
    if (confirmSignOut == true) {
      _signOut(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      title: Text('Home Page'),
      actions: <Widget>[
        FlatButton(
          onPressed: () => _confirmSignOut(context),
          child: Text(
            'Logout',
            style: TextStyle(
              fontSize: 18.0,
              color: Colors.white,
            ),
          ),
        )
      ],
    ));
  }
}
