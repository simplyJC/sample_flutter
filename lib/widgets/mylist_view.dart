import 'package:flutter/material.dart';
import 'package:sample_flutter/widgets/mylist_tile.dart';

class MyListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView (
      children: <Widget> [
        MyListTile(),
        MyListTile(),
        MyListTile(),
      ],
    );
  }
}