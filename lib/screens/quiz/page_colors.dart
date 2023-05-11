import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class pageColors extends StatefulWidget {
  const pageColors({super.key});

  @override
  State<pageColors> createState() => _pageColorsState();
}

class _pageColorsState extends State<pageColors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Colors')),
      ),
    );
  }
}
