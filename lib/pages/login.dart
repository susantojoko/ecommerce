import 'package:ecommerce/fucntion/navbar.dart';
import 'package:ecommerce/pages/profil_page.dart';
import 'package:flutter/material.dart';
import '../fucntion/form_container_widget.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'check.dart';
import 'profil_page.dart';
import 'check.dart';

class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

    @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 150),
              child: Center(
                child: Text(
                  'LOGIN',
                  style: TextStyle(
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent,
                  ),
                ),
              ),
            ),
            SizedBox(height: 40.0),
            FormContainerWidget(
              controller: _emailController,
              hintText: "Email",
              isPasswordField: false,
            ),
            SizedBox(height: 10),
            FormContainerWidget(
              controller: _passwordController,
              hintText: "Password",
              isPasswordField: true,
            ),
            SizedBox(height: 5.0),
            Container(
              margin: EdgeInsets.only(left: 5),
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/forgot');
                  // Logika untuk lupa kata sandi atau pendaftaran
                },
                child: Text("Lupa Password"),
              ),
            ),
            SizedBox(height: 10.0),
            Center(
              child: Container(
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MainPage()));
                    // Navigator.pushNamed(context, '/main');
                    // _signIn(context);
                  },
                  child: Text('Login'),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                  // Logika untuk lupa kata sandi atau pendaftaran
                },
                child: Text("Don't have an account? Sign Up"),
              ),
            ),
            // ElevatedButton(onPressed: (){
            //   Navigator.pushNamed(context, '/sample');
            // }, child: Text('Sample fungsi'),
            // ),
            // ElevatedButton(onPressed: (){
            //   Navigator.push(context,MaterialPageRoute(builder: (context) => FavoritePage()));
            // }, child: Text('Sample fungsi2'),
            // ),
            ElevatedButton(onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder: (context) => ProductDetailPage2()));
            }, child: Text('Sample fungsi2'),
            ),
          ],
        ),
      ),
    );
  }

  void _signIn(BuildContext context) async {
    String email = _emailController.text;
    String password = _passwordController.text;

    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );

      User? user = userCredential.user;

      if (user != null) {
        print("User is successfully signed in");
        Navigator.of(context).pushNamed("/main");
      } else {
        print("Some error happened");
        
      }
    } catch (e) {
      print(e);
    }
  }
}