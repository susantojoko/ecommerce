import 'package:ecommerce/pages/favorite_page.dart';

import 'package:ecommerce/pages/notification_page.dart';
import 'package:ecommerce/pages/profile_page.dart';
import 'package:flutter/material.dart';
import '../pages/detail_product.dart';
import '../pages/keranjang.dart';

class CartItem {
  String jenis;
  int quantity;
  double price;

  CartItem(this.jenis, this.quantity, this.price,);
}
List<CartItem> cartItems = [];

Widget buildBottomNavItemWithIcon(
      IconData icon, VoidCallback onPressed) {
    return Column(
      children: [
        IconButton(
          icon: Icon(icon),
          onPressed: onPressed,
        ),
      ],
    );
  }

Widget buildBottomBar( IconData icon, VoidCallback? onPressed){
  return Column(
    children: [
      IconButton(
        icon : Icon(icon),
        onPressed: onPressed,
      ),
    ],
  );
  }


class FixBottomBar extends StatelessWidget {

  Widget buildBottomBar( IconData? icon, VoidCallback? onPressed){
  return Column(
    children: [
      IconButton(
        icon : Icon(icon),
        onPressed: onPressed,
      ),
    ],
  );
  }
 @override
  Widget build(BuildContext context) {
    return Scaffold(
  bottomNavigationBar: BottomAppBar(
        
        height: 50,
        color: Colors.blueAccent,
        child: Padding(
          padding: const EdgeInsets.all(2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              buildBottomBar(Icons.home_filled,
              () {
               Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage()));
              }
              ),
              buildBottomBar(Icons.notifications,
              () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => NotificationPage()));
              }
              ),
              buildBottomBar(Icons.favorite,
              () {
                 Navigator.push(context, MaterialPageRoute(builder: (context) => FavoritePage()));
              }
              ),
              buildBottomBar(
                Icons.person,
                
                () {
                   Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePage()));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Halaman Profile, 
class MenuProfile extends StatelessWidget {
  final IconData? icon;
  final String label;

  MenuProfile({this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(icon),
        Text(label),
      ],
    );
  }
}
class MenuProfile3 extends StatelessWidget {
  final IconData? icon;
  final String label;

  MenuProfile3({this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white, 
      ),
      child: Row(
        children: [
          Icon(icon),
          Text(label),
        ],
      ),
    );
  }
}

//halaman home
Widget buildProductItem(
    String imageUrl,
    String jenis,
    String warna,
    double rating,
    int reviewCount,
    double price,
    BuildContext context, // Tambahkan parameter BuildContext
  ) {
    return GestureDetector(
      onTap: () {
        // Navigasi ke halaman detail produk saat gambar produk diklik
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) => ProductDetailPage(
              imageUrl: imageUrl,
              jenis: jenis,
              warna:warna,
              rating: rating,
              reviewCount: reviewCount,
              price: price,
            ),
          ),
        );
      },
      child: Container(
        height: 200,
        width: 150,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              imageUrl,
              height: 80,
              width: double.infinity,
            ),
            Padding(
              padding: EdgeInsets.only(top: 5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    jenis,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 2),
                  Text(
                    warna,
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 2),
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 12,
                        color: Colors.orange,
                      ),
                      SizedBox(width: 3),
                      Text(
                        '$rating | $reviewCount',
                        style: TextStyle(color: Colors.grey, fontSize: 12),
                      ),
                    ],
                  ),
                  Text(
                    'Rp $price',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff2a977d),
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
