import 'dart:math';
import 'package:flutter/material.dart';

bool isPrime(int number) {
  if (number < 2) {
    return false;
  }
  
  for (int i = 2; i <= sqrt(number); i++) {
    if (number % i == 0) {
      return false;
    }
  }
  
  return true;
}

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Muhamad Mahasin Bagus Saputro (GENAP)',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(title: Text('Muhamad Mahasin Bagus Saputro (GENAP)')),
        body: ListView.builder(
          itemCount: 46, // Jumlah bilangan dari 0 hingga 45
          itemBuilder: (context, index) {
            final number = index;
            final isNumberPrime = isPrime(number);
            final result = isNumberPrime ? 'adalah bilangan prima' : 'bukan bilangan prima';
            return ListTile(
              title: Text('$number'),
              subtitle: Text(result),
            );
          },
        ),
      ),
    );
  }
}
