import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class pageFamily extends StatefulWidget {
  const pageFamily({super.key});

  @override
  State<pageFamily> createState() => _pageFamilyState();
}

class _pageFamilyState extends State<pageFamily> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Family')),
      ),
    );
  }
}
