import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      alignment: Alignment.topCenter,
      padding: EdgeInsets.fromLTRB(0, 90, 0, 0),
      child: Column(
        children: [
          ClipOval(
            child: Image.asset(
              './lib/assets/logo.png',
              fit: BoxFit.cover,
              width: 130.0,
              height: 130.0,
            ),
          ),
          const SizedBox(height: 20),
         const Text(
            "Welcome Back",
            style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255), fontWeight: FontWeight.bold, fontSize: 23),
          ),
          
        ],
      ),
    );
  }
}
