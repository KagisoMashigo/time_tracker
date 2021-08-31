import 'package:flutter/material.dart';

class EmptyContent extends StatelessWidget {
  const EmptyContent({Key key, this.title, this.message}) : super(key: key);

  final String title;
  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 32, color: Colors.black54),
          ),
          Text(
            title,
            style: TextStyle(fontSize: 16, color: Colors.black54),
          )
        ],
      ),
    );
  }
}
