import 'package:dotech/controllar/cart_controllar.dart';
import 'package:dotech/nav_bar.dart';
import 'package:dotech/screen/Product_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(create: (_) => CartProvider(), child: const MyApp()),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dotech',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: NavBar(),
    );
  }
}
