// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:todoapp/exports/exports.dart';

class ListViewWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [ListTileWiget(), ListTileWiget(), ListTileWiget()],
    );
  }
}
