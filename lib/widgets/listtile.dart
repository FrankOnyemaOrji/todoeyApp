// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';

class ListTileWiget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('This is a Task'),
      trailing: Checkbox(
        onChanged: null,
        value: false,
      ),
    );
  }
}
