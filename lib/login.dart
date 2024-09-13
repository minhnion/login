import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login/home.dart';
import 'package:login/signup.dart';

import 'forget.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _showpass=false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: [
            Image.asset('assets/nen.jpg',
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  Container(
                      margin: EdgeInsets.fromLTRB(20, 50, 20, 0),
                      alignment: Alignment.center,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          'assets/music.jpg',
                          fit: BoxFit.cover,
                        ),
                      )
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Text(
                      'Hello',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0,0, 2),
                    child: Text(
                      'Wellcome Back',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 20, 20, 10),
                    child: TextFormField(

                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                      decoration: InputDecoration(

                          hintText: 'USERNAME',
                          hintStyle: TextStyle(color: Colors.black54,fontSize: 15)

                      ),

                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Stack(
                      alignment: Alignment.centerRight,
                      children: [
                        TextFormField(

                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,color: Colors.black),
                          obscureText: !_showpass,
                          decoration: InputDecoration(

                              labelText: 'PASSWORD',
                              labelStyle: TextStyle(color: Colors.black54,fontSize: 15)

                          ),

                        ),
                        GestureDetector(
                            onTap: showornot,
                            child: Icon(
                                _showpass? Icons.visibility:Icons.visibility_off
                            )
                        )

                      ],
                    ),

                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 10, 30, 0),
                    child: Builder(
                        builder: (context) {
                          return TextButton(
                              onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Home1()));
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.cyan,
                                foregroundColor: Colors.white,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('SIGN IN',style: TextStyle(fontSize: 25),),
                                ],
                              )
                          );
                        }
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 40, 30, 0),
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Builder(
                            builder: (context) {
                              return GestureDetector(
                                  child: Text(
                                    'Sign up?',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  onTap: (){
                                    Navigator.push(context, MaterialPageRoute(builder: (context) =>Signup() ));
                                  }
                              );
                            }
                        ),
                        Builder(
                            builder: (context) {
                              return GestureDetector(
                                child: Text(
                                  'Forget Password?',
                                  style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.cyan,
                                  ),
                                ),
                                onTap: (){
                                  Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Forget()));
                                },
                              );
                            }
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        )
      ),
    );
  }

  void showornot(){
    setState(() {
      _showpass=!_showpass;
    });
  }
}