import 'package:dotech/controllar/cart_controllar.dart';
import 'package:dotech/screen/Product_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CartController(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dotech',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: ProductScreen(),
    );
  }
}
