import 'package:dotech/controllar/cart_controllar.dart';
import 'package:dotech/model/cart_model.dart';
import 'package:dotech/product/product_list.dart';
import 'package:dotech/screen/cart_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<CartProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Products'),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const CartScreen()),
              );
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: ProductList().products.length,
              itemBuilder: (context, index) {
                final product = ProductList().products[index];
                return ListTile(
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 5,
                  ),
                  onTap: () {},
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),

                    child: Image.asset(
                      product.imageUrl,
                      width: 80,
                      height: 100,
                    ),
                  ),
                  title: Text(
                    product.name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(product.description),
                      Text(
                        '\$${product.price}',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                  trailing: TextButton(
                    onPressed: () {
                      cart.addToCart(product);
                    },
                    child: Text(
                      'add+',
                      style: TextStyle(color: Colors.purple, fontSize: 20),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
