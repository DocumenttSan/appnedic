import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class pageBody extends StatefulWidget {
  const pageBody({super.key});

  @override
  State<pageBody> createState() => _pageBodyState();
}

class _pageBodyState extends State<pageBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Body')),
      ),
    );
  }
}
