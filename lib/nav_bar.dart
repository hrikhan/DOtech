// lib/screens/main_screen.dart
import 'package:dotech/controllar/nav_bar_contollar.dart';
import 'package:dotech/screen/Product_screen.dart';
import 'package:dotech/screen/cart_screen.dart';
import 'package:dotech/screen/user_information.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavBar extends StatelessWidget {
  NavBar({super.key});

  final BottomNavController _controller = Get.put(BottomNavController());

  final List<Widget> _screens = [
    ProductScreen(),
    CartScreen(),
    UserListScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<BottomNavController>(
        builder: (_) {
          return _screens[_controller.currentIndex.value];
        },
      ),
      bottomNavigationBar: GetBuilder<BottomNavController>(
        builder: (_) {
          return BottomNavigationBar(
            currentIndex: _controller.currentIndex.value,
            onTap: (index) {
              _controller.updateIndex(index);
            },
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.shop),
                label: 'Products',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart),
                label: 'Cart',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Profile',
              ),
            ],
          );
        },
      ),
    );
  }
}
