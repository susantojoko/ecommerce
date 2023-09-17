
import 'package:ecommerce/fucntion/navbar.dart';
import 'package:ecommerce/pages/keranjang.dart';
import 'package:flutter/material.dart';
import 'pages/signup_page.dart';
import 'pages/home_page.dart';
import 'pages/forgot_page.dart';
import 'pages/login.dart';


import 'fucntion/form_container_widget.dart';

import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,);

  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
  runApp(MyApp(navigatorKey: navigatorKey));
}

class MyApp extends StatefulWidget {

  final GlobalKey<NavigatorState> navigatorKey;

  MyApp({required this.navigatorKey});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: widget.navigatorKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      title: "Ecommerce",
      initialRoute: '/',
      routes: {
        '/signup': (context) => SignUpPage(),
        '/home': (context) => HomePage(),
        '/main': (context) => MainHomePage(),
        '/forgot': (context) => ForgotPage(),
        '/keranjang': (context) => CartPage(),
        
      },
      home: SplashScreen(navigatorKey: widget.navigatorKey),
    );
  }
}

class SplashScreen extends StatefulWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  SplashScreen({required this.navigatorKey});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay untuk simulasi tampilan splash screen selama 2 detik
    Future.delayed(Duration(seconds: 2), () {
      // Pindah ke halaman beranda atau halaman utama aplikasi setelah splash screen
      widget.navigatorKey.currentState!.pushReplacementNamed('/home');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/splash.jpg',
              width: 200,
            ),
            SizedBox(height: 16.0),
            Text(
              'SAMUN',
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

