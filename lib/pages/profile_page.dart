import 'package:flutter/material.dart';
import '../fucntion/fucntion.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: ProfileWidget(
                name: 'Apa Kabar Brother',
                email: 'johndoe@example.com',
                profileImage: 'assets/images/person.png',
              ),
            ),
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
            MenuProfile3(icon: Icons.person, label: 'My Profile'),
            MenuProfile3(icon: Icons.map, label: 'Locaotion'),
            MenuProfile3(icon: Icons.chat, label: 'My Chat'),
            MenuProfile3(icon: Icons.rate_review, label: 'Rate Your Purchase'),
            SizedBox(height: 40,),
            MenuProfile3(label: 'Sign Out'),
          ],
        ),
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  final String name;
  final String email;
  final String profileImage;

  ProfileWidget({
    required this.name,
    required this.email,
    required this.profileImage,
  });

  @override
  Widget build(BuildContext context) {
    // double screenWidth = MediaQuery.of(context).size.width;
    // double screenHeight = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.purpleAccent,
          boxShadow: [
            BoxShadow(
              color: Colors.purple.withOpacity(0.5),
              blurRadius: 5,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage(profileImage),
            ),
            SizedBox(height: 16),
            Text(
              name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              email,
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 16),
            
            ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk mengedit profil di sini
              },
              child: Text('Edit Profile'),
            ),
          ],
        ),
      ),
    );
  }
}

