import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class EmailSIgnInForm extends StatelessWidget {
  const EmailSIgnInForm({Key key}) : super(key: key);

  List<Widget> _buildChildren() {
    return [
      TextField(
        decoration: InputDecoration(
          labelText: 'Email',
          hintText: 'time@tracker.com'
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _buildChildren(),
    );
  }
}
