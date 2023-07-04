import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AppStatefull extends StatefulWidget {
  const AppStatefull({super.key});

  @override
  State<AppStatefull> createState() => _AppStatefullState();
}

class _AppStatefullState extends State<AppStatefull> {
  int angka = 1;

  void ContohIncrement(){
    setState(() {
      angka +=1;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muhamad Mahasin Bagus Saputro (GENAP)',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => ContohIncrement(),
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Muhamad Mahasin Bagus Saputro (GENAP)'),
        ),
        body: Center(
          child: Text('Angka: $angka', style: TextStyle(fontSize: 30)),
        ),
      ),
    );
  }
}