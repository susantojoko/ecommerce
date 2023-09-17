import 'package:flutter/material.dart';
import '../fucntion/form_container_widget.dart';
import '../authentication.dart';
import 'login.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SignUpPage extends StatefulWidget {

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
    final FirebaseAuthService _auth = FirebaseAuthService();

  TextEditingController _usernameController = TextEditingController();

  TextEditingController _emailController = TextEditingController();

  TextEditingController _passwordController = TextEditingController();

   @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

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
          child: Center(child: Text('Sign Up')),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 30),
            FormContainerWidget(
controller: _usernameController,
                hintText: "Username",
                isPasswordField: false,
              ),
              SizedBox(
                height: 10,
              ),
              FormContainerWidget(

controller: _emailController,
                hintText: "Email",
                isPasswordField: false,
              ),
              SizedBox(
                height: 10,
              ),
              FormContainerWidget(
controller: _passwordController,

                hintText: "Password",
                isPasswordField: true,
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
                  onPressed:() {
                    Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()),
        );
                    },
                  child: Text('Sign Up'),
                ),
              ),
            ),
            SizedBox(height: 16.0),
            Center(
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context); // Kembali ke halaman sebelumnya (biasanya ke halaman login)
                },
                child: Text('I already have an account? Login'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _signUp() async {
    String username = _usernameController.text;
    String email = _emailController.text;
    String password = _passwordController.text;

    User? user = await _auth.signUpWithEmailAndPassword(email, password);

    if (user != null){
      print("User is successfully created");
      Navigator.push(context,MaterialPageRoute(builder: (context) => HomePage()),
        );
    } else{
      print("Some error happend");
    }

  }
}


