import 'package:flutter/material.dart';

class ForgotPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(50.0),
            bottomLeft: Radius.circular(50.0),
          ),
        ),
        toolbarHeight: 50,
        title: Padding(
          padding: const EdgeInsets.only(right: 30.0),
          child: Center(child: Text('Lupa Pasword')),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            Text("Username/ Email", textAlign: TextAlign.left),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Username/Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            Text("Email", textAlign: TextAlign.left),
            SizedBox(height: 10.0),
            TextFormField(
              obscureText: true, // Untuk menyembunyikan kata sandi
              decoration: InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 10.0),
            Text("Password baru", textAlign: TextAlign.left),
            SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password baru',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16.0),
            Text("Confirm Password", textAlign: TextAlign.left),
            SizedBox(height: 10.0),
            TextFormField(
              obscureText: true, // Untuk menyembunyikan kata sandi
              decoration: InputDecoration(
                labelText: 'Confirm Password',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 30.0),
            Center(
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: MaterialButton(
                  onPressed: () {
                    // Logika untuk melakukan autentikasi login
                  },
                  child: Text('Reset Password'),
                ),
              ),
            ),
           
          ],
        ),
      ),
    );
  }
}
