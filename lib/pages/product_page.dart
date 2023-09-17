import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final List<ProductItem> products = [
    ProductItem(
      imageUrl: 'assets/images/hp1.jpg',
      productName: 'SmartPhone1',
      rating: 4.5,
      reviewCount: 3987,
      price: 1500000,
    ),
    ProductItem(
      imageUrl: 'assets/images/hp2.jpg',
      productName: 'SmartPhone2',
      rating: 4.2,
      reviewCount: 2805,
      price: 1200000,
    ),
    ProductItem(
      imageUrl: 'assets/images/hp3.jpg',
      productName: 'SmartPhone3',
      rating: 4.0,
      reviewCount: 1532,
      price: 900000,
    ),
    // Tambahkan produk lainnya di sini...
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text('Product Page'),
        actions: [
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              // Tambahkan logika untuk tampilan pencarian di sini
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Tambahkan logika untuk tampilan keranjang belanja di sini
            },
          ),
          IconButton(
            icon: Icon(Icons.chat),
            onPressed: () {
              // Tambahkan logika untuk tampilan obrolan di sini
            },
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return ListView.builder(
            itemCount: (products.length / 2).ceil(),
            itemBuilder: (context, index) {
              final startIndex = index * 2;
              final endIndex = startIndex + 2;

              final productSubset = products.sublist(
                startIndex,
                endIndex > products.length ? products.length : endIndex,
              );

              return Row(
                children: productSubset.map((product) {
                  final cardWidth = constraints.maxWidth / 2 - 16; // Mengatur lebar kartu menjadi setengah dari lebar layar
                  return Container(
                    width: cardWidth,
                    child: _buildProductItem(
                      imageUrl: product.imageUrl,
                      productName: product.productName,
                      rating: product.rating,
                      reviewCount: product.reviewCount,
                      price: product.price,
                    ),
                  );
                }).toList(),
              );
            },
          );
        },
      ),
    );
  }

  Widget _buildProductItem({
    required String imageUrl,
    required String productName,
    required double rating,
    required int reviewCount,
    required double price,
  }) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke halaman detail produk saat gambar produk diklik
        // Tambahkan logika navigasi ke halaman detail produk di sini
      },
      child: Container(
        margin: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 1,
              blurRadius: 2,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              width: double.infinity,
              height: 140,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 4.0),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 14,
                        color: Colors.orange,
                      ),
                      SizedBox(width: 4.0),
                      Text(
                        '$rating | $reviewCount Reviews',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 4.0),
                  Text(
                    'Rp ${price.toStringAsFixed(0)}',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductItem {
  final String imageUrl;
  final String productName;
  final double rating;
  final int reviewCount;
  final double price;

  ProductItem({
    required this.imageUrl,
    required this.productName,
    required this.rating,
    required this.reviewCount,
    required this.price,
  });
}
