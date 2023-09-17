import 'package:flutter/material.dart';
import '../fucntion/fucntion.dart';

class profilPage extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: Center(
          child: Column(children: [
             Container(
              width: 250,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
              ),
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    MenuProfile(icon: Icons.note, label: 'My Pesanan'),
                    MenuProfile(icon: Icons.favorite, label: 'Wishlist'),
                    MenuProfile(icon: Icons.notifications_active, label: 'Notification'),
                  ],
                ),
              ),
            ),
            SizedBox(height: 16),
          ]),
        ),
      ),
    );
  }
}