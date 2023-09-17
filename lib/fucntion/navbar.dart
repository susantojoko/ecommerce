import 'package:ecommerce/pages/keranjang.dart';
import 'package:flutter/material.dart';
import '../pages/favorite_page.dart';
import '../pages/profile_page.dart';
import '../pages/notification_page.dart';
import '../pages/home_page.dart';
//import 'package:login_page/tes.dart';

class MainPage extends StatefulWidget {

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    MainHomePage(),
    NotificationPage(),
    FavoritePage(),
    CartPage(),
    ProfilePage(),
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('appBar')
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.blue,
        onTap: onTap,
        unselectedItemColor: Colors.black.withOpacity(0.5),
        backgroundColor: const Color.fromARGB(255, 255, 255, 255),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Notif',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}