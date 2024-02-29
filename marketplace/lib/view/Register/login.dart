import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
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
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
                fontSize: 23),
          ),
          const Text(
            "Sign In to access your account!",
            style: TextStyle(
                color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            decoration: const InputDecoration(
              suffixIcon: Icon(Icons.person_outline,
                  size: 28, color: Color.fromARGB(255, 97, 100, 95)),
              labelText: "Email / Phone Number",
              hintText: "",
              labelStyle: TextStyle(
                  fontSize: 15,
                  color: Color.fromARGB(255, 97, 100, 95),
                  fontWeight: FontWeight.normal),
              border: OutlineInputBorder(
                borderSide: BorderSide(width: 5, style: BorderStyle.solid),
                borderRadius: BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
