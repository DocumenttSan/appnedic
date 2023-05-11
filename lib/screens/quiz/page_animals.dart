import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class pageAnimals extends StatefulWidget {
  const pageAnimals({super.key});

  @override
  State<pageAnimals> createState() => _pageAnimalsState();
}

class _pageAnimalsState extends State<pageAnimals> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Animals',
          ),
        ),
      ),
    );
  }
}
