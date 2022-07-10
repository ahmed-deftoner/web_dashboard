import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class smallScreen extends StatelessWidget {
  const smallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints.expand(),
      color: Colors.green,
    );
  }
}
