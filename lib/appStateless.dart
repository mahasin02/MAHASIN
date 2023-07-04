import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppStateless extends StatelessWidget {
  const AppStateless({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muhamad Mahasin Bagus Saputro (GENAP)',
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Muhamad Mahasin Bagus Saputro (GENAP)'),
        ),
        body: Center(
          child: Text('Angka: 1', style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}