import 'package:flutter/material.dart';

import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Image.asset(
                  'assets/images/ax.png',
                  fit: BoxFit.contain,
                  height: 250,
                ),
              ),
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: TextField(
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff494949),
                    hintText: 'Enter your name or email',
                    hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: TextField(
                  style: TextStyle(color: Colors.white, fontSize: 20),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xff494949),
                    hintText: 'Enter your password',
                    hintStyle: TextStyle(color: Colors.white, fontSize: 20),
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Forgot password?',
                    style: TextStyle(color: Colors.blue[200], fontSize: 20),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(6),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomeScreen()),
                    );
                  },
                  child: Text(
                    'Login',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.facebook, color: Colors.blue),
                    SizedBox(width: 7),
                    Text(
                      'Login with Facebook',
                      style: TextStyle(color: Colors.blue[200], fontSize: 20),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
