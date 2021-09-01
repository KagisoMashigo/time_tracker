import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:time_tracker_flutter_course/pages/home/tab_item.dart';

class CupertinoHomeScaffold extends StatelessWidget {
  const CupertinoHomeScaffold({
    Key key,
    @required this.currentTab,
    @required this.onSelectedTab,
  }) : super(key: key);

  final TabItem currentTab;
  final ValueChanged<TabItem> onSelectedTab;

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
      items: [],
      onTap: (index) => onSelectedTab(TabItem.values[index]),
    ));
  }
}
