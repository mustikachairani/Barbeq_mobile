import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

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
        padding: const EdgeInsets.fromLTRB(15, 80, 15, 0),
        child: Column(
          children: [
            ClipOval(
              child: Image.asset(
                './lib/assets/logo.png',
                fit: BoxFit.cover,
                width: 120.0,
                height: 120.0,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Welcome Back",
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.bold,
                  fontSize: 25),
            ),
            const Text(
              "Sign In to Access Your Account!",
              style: TextStyle(
                  color: Color.fromARGB(255, 0, 0, 0),
                  fontWeight: FontWeight.normal,
                  fontSize: 18),
            ),
            const SizedBox(
              height: 50,
            ),
            const TextField(
              // controller: _username,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.person_outline,
                      size: 28, color: Color.fromARGB(255, 88, 88, 88)),
                  labelText: "Email / Phone Number",
                  hintText: "Enter User Name",
                  labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 88, 88, 88),
                      fontWeight: FontWeight.normal),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      // BorderSide(width: 3, style: BorderStyle.solid,color: Color.fromARGB(255, 109, 105, 105),),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                  filled: true,
                  fillColor: Color.fromARGB(255, 216, 216, 216),
                  contentPadding: EdgeInsets.all(19)),
            ),
            const SizedBox(
              height: 10,
            ),
            const TextField(
              // controller: _username,
              decoration: InputDecoration(
                  suffixIcon: Icon(Icons.lock_outline,
                      size: 25, color: Color.fromARGB(255, 88, 88, 88)),
                  labelText: "Password",
                  hintText: "Enter User Name",
                  labelStyle: TextStyle(
                      fontSize: 15,
                      color: Color.fromARGB(255, 88, 88, 88),
                      fontWeight: FontWeight.normal),
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      // BorderSide(width: 3, style: BorderStyle.solid,color: Color.fromARGB(255, 109, 105, 105),),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      )),
                  filled: true,
                  fillColor: Color.fromARGB(255, 216, 216, 216),
                  contentPadding: EdgeInsets.all(19)),
            ),
            const SizedBox(height: 7),
            Row(
              children: [
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
                const Text(
                  'Remember me',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  width: 70,
                ),
                const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontSize: 15,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            // ElevatedButton(
            //     onPressed: () {},
            //     child: const Text(
            //       'Log In',
            //     ),),
            Padding(
              padding: const EdgeInsets.fromLTRB(32,50,32,0),
              child: ElevatedButton(
                onPressed: () {
                  // Handle button press here
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromRGBO(181, 11, 11, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.fromLTRB(110, 11, 110, 11)),
                child: const Text(
                  'LOG IN',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(90, 0, 0, 0),
              child: Row(
                children: [
                 const Text('New Member?'),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Register Now',
                        style: TextStyle(
                            color:  Color.fromARGB(255, 148, 18, 8)),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
