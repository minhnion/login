import 'package:flutter/material.dart';
import 'package:login/login.dart'; // Kiểm tra nếu login.dart đã được import chính xác.
import 'package:http/http.dart' as http;
class Signup extends StatefulWidget {
  const Signup({super.key});

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool _showpass = false;
  var _username= TextEditingController();
  var _email= TextEditingController();
  var _password= TextEditingController();
  var _confirmpass= TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Stack(
            children: [
                 Image.network(
                  'https://img.freepik.com/free-vector/blue-fluid-background-frame_53876-99019.jpg?semt=ais_hybrid',
                  fit: BoxFit.cover,
                   width: double.infinity,
                   height: double.infinity,
                ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(height: 100), // Khoảng cách phía trên
                    const ListTile(
                      leading: Icon(
                        Icons.account_circle,
                        size: 60,
                      ),
                      title: Text(
                        'Register',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 40),
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: TextFormField(
                        controller: _username,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            hintText: 'USERNAME',
                            hintStyle: const TextStyle(
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
                      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: TextFormField(
                        controller: _email,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                        decoration: InputDecoration(
                            hintText: 'EMAIL',
                            hintStyle: const TextStyle(
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
                      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          TextFormField(
                            controller: _password,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            obscureText: !_showpass,
                            decoration: InputDecoration(
                                hintText: 'PASSWORD',
                                hintStyle: const TextStyle(
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
                      margin: const EdgeInsets.fromLTRB(20, 20, 20, 0),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          TextFormField(
                            controller: _confirmpass,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black),
                            obscureText: !_showpass,
                            decoration: InputDecoration(
                                hintText: 'CONFIRM PASSWORD',
                                hintStyle: const TextStyle(
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
                              // Navigator.push(
                              //     context,
                              //     MaterialPageRoute(
                              //         builder: (context) => Login()));
                              register(_username.text, _email.text, _password.text, _confirmpass.text);
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.grey,
                            ),
                            child: const Text(
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
  void register(user,email, password, confirmpass){


    
  }

  void showornot() {
    setState(() {
      _showpass = !_showpass;
    });
  }
}
