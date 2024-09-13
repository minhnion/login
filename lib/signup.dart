import 'package:flutter/material.dart';
import 'package:login/login.dart'; // Kiểm tra nếu login.dart đã được import chính xác.

class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _showpass = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
            children: [
                 Image.asset(
                  'assets/nen.jpg',
                  fit: BoxFit.cover,
                   width: double.infinity,
                   height: double.infinity,
                ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(height: 100), // Khoảng cách phía trên
                    ListTile(
                      leading: Icon(
                        Icons.account_circle,
                        size: 60,
                      ),
                      title: Text(
                        'Register a new account',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 40),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: TextFormField(
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            hintText: 'USERNAME',
                            hintStyle: TextStyle(
                              color: Colors.black54,
                            ),
                            //filled: true,
                            //fillColor: Colors.cyanAccent,
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                            )
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          TextFormField(
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            obscureText: !_showpass,
                            decoration: InputDecoration(
                                hintText: 'PASSWORD',
                                hintStyle: TextStyle(
                                    color: Colors.black54, fontSize: 15),
                                // filled: true,
                                // fillColor: Colors.cyanAccent,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                          Positioned(
                            right: 20,
                            child: GestureDetector(
                                onTap: showornot,
                                child: Icon(_showpass
                                    ? Icons.visibility
                                    : Icons.visibility_off)),
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          TextFormField(
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            obscureText: !_showpass,
                            decoration: InputDecoration(
                                hintText: 'CONFIRM PASSWORD',
                                hintStyle: TextStyle(
                                    color: Colors.black54, fontSize: 15),
                                // filled: true,
                                // fillColor: Colors.cyanAccent,
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                          Positioned(
                            right: 20,
                            child: GestureDetector(
                                onTap: showornot,
                                child: Icon(_showpass
                                    ? Icons.visibility
                                    : Icons.visibility_off)),
                          )
                        ],
                      ),
                    ),
                    Builder(builder: (context) {
                      return Container(
                        margin: EdgeInsets.only(top: 30),
                        width: 200,
                        child: TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => Login()));
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey,
                            ),
                            child: Text(
                              'Sign up',
                              style: TextStyle(color: Colors.black, fontSize: 30),
                            )),
                      );
                    })
                  ],
                ),
              ),
            ],
          )),
    );
  }

  void showornot() {
    setState(() {
      _showpass = !_showpass;
    });
  }
}
