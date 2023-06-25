import 'package:flutter/material.dart';

class Product {
  final String name;
  final String image;
  final double price;

  Product({required this.name, required this.image, required this.price});
}

class ProductListPage extends StatelessWidget {
  final List<Product> products = [
    Product(name: 'Fastrack Reflex VOX 2.0 1.8 Inch TFT LCD Display Black Smart Watch', image: 'assets/product1.jpg', price:4995),
    Product(name: 'Product 2', image: 'assets/product1.jpg', price: 19.99),
    Product(name: 'Product 3', image: 'assets/product1.jpg', price: 15.49),
     Product(name: 'Product 3', image: 'assets/product1.jpg', price: 15.49),
      Product(name: 'Product 3', image: 'assets/product1.jpg', price: 15.49),
       Product(name: 'Product 3', image: 'assets/product1.jpg', price: 15.49),
        Product(name: 'Product 3', image: 'assets/product1.jpg', price: 15.49),
         Product(name: 'Product 3', image: 'assets/product1.jpg', price: 15.49),
          Product(name: 'Product 3', image: 'assets/product1.jpg', price: 15.49),
           Product(name: 'Product 3', image: 'assets/product1.jpg', price: 15.49),
            Product(name: 'Product 3', image: 'assets/product1.jpg', price: 15.49),
            
    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final product = products[index];
          return ListTile(
            leading: Image.asset(
              product.image,
              width: 50,
              height: 50,
            ),
            title: Text(product.name,overflow: TextOverflow.ellipsis,maxLines: 1,),
            subtitle: Text('\$${product.price.toStringAsFixed(2)}'),
            onTap: () {
              // Handle item tap
              // Example: navigate to product details page
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProductDetailsPage(product: product),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class ProductDetailsPage extends StatelessWidget {
  final Product product;

  ProductDetailsPage({required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Details'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            product.image,
            width: 200,
            height: 200,
          ),
          SizedBox(height: 20),
          Text(
            product.name,
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Text(
            '\$${product.price.toStringAsFixed(2)}',
            style: TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: ProductListPage(),
  ));
}
