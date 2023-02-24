import 'dart:ui';

import 'package:amazonajmal/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Screen extends StatefulWidget {
  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final usernameController = TextEditingController();

  final PasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      // // appBar: AppBar(
      // //   centerTitle: true,
      // //   title: Image.asset(
      // //     'images/amazon.png',
      // //     width: 250,
      // //   ),
      //   backgroundColor: Colors.white,
      // ),
      // title: Text(
      //   'amazon.in',
      //   style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
      // ),

      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Icon(
              Icons.lock,
              size: 90,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Text(
                    'Welcome Back',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey[700]),
                  ),
                ),
              ],
            ),
            // SizedBox(
            //   height: 10,
            // ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: TextField(
                  controller: usernameController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400)),
                      hintText: 'Email',
                      fillColor: Colors.white,
                      filled: true)),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 24),
              child: TextField(
                  obscureText: true,
                  controller: PasswordController,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(20),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey.shade400)),
                      hintText: 'Password',
                      fillColor: Colors.white,
                      filled: true)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 24),
                  child: Text(
                    'Forgot Password?',
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ],
            ),
            GestureDetector(
              onTap: (() {
                loginPage(context);
              }),
              child: Container(
                width: 300,
                height: 70,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8)),
                child: Center(
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 25,
            ),
            Row(
              children: [
                Expanded(
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey[400],
                  ),
                ),
                Text(
                  'Or continue with',
                  style: TextStyle(
                    color: Colors.black54,
                  ),
                ),
                Expanded(
                    child: Divider(
                  thickness: 1,
                  color: Colors.grey[400],
                ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  width: 90,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white54),
                  child: Image.asset(
                    'images/google.jpg',
                  ),
                ),
                Container(
                  width: 90,
                  height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white70),
                  child: Image.asset('images/facebook.jpeg', width: 80),
                ),
                Container(
                  width: 90,
                  height: 80,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)),
                  child: Image.asset(
                    'images/apple1.jpeg',
                  ),
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text('Not a member? Register now',
                style: TextStyle(
                  color: Colors.grey[700],
                ))
          ],
        ),
      )),
    );
  }

  loginPage(BuildContext context) async {
    final _userName = usernameController.text;
    final _Password = PasswordController.text;
    if (_userName == _Password) {
      final Shareprefs = await SharedPreferences.getInstance();
      Shareprefs.getBool(GotoNext);
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (ctx1) => Screen()));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Your Password is incorrect'),
        ),
      );
    }
  }
}
