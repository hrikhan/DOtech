import 'package:dotech/model/cart_model.dart';
import 'package:dotech/product/product_list.dart';
import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('All Products')),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: ProductList().products.length,
              itemBuilder: (context, index) {
                final product = ProductList().products[index];
                return ListTile(
                  onTap: (){
                    
                  },
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(10),

                    child: Image.asset(product.imageUrl, width: 70, height: 70),
                  ),
                  title: Text(
                    product.name,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(product.description),
                  trailing: Text(
                    '\$${product.price}',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
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
