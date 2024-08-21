import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [
                    0.1,
                    0.4,
                    0.6,
                  ],
                  colors: [
                    Colors.blue,
                    Colors.white,
                    Colors.blue,
                  ],
                )
            ),
            padding: EdgeInsets.only(top: 50),
            child: Column(
                children: [
                  Image.asset("assets/images/logo.png", width: 100, height: 100,),
                  SizedBox(height: 20,),
                  Text("សាកលវិទ្យាល័យ ជាតិគ្រប់គ្រង", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
                  Text("National University of Management", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.all(20),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(13)),
                        child: Container(
                          color: Colors.white70,
                          padding: EdgeInsets.all(20),
                          child: ListView(
                            children: [
                              SizedBox(
                                child: Stack(
                                  children: [
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          border: UnderlineInputBorder(),
                                          label: Row(
                                            children: [
                                              Text("Username", style: TextStyle(color: Colors.grey),),
                                              SizedBox(width: 5,),
                                              Text("*", style: TextStyle(color: Colors.red),),
                                            ],
                                          )
                                      ),
                                    ),
                                    Positioned(
                                      right: 20, top: 25,
                                      child: Icon(Icons.person, size: 25, color: Colors.grey,),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 20,),
                              SizedBox(
                                child: Stack(
                                  children: [
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          border: UnderlineInputBorder(),
                                          label: Row(
                                            children: [
                                              Text("Password", style: TextStyle(color: Colors.grey),),
                                              SizedBox(width: 5,),
                                              Text("*", style: TextStyle(color: Colors.red),),
                                            ],
                                          )
                                      ),
                                    ),
                                    Positioned(
                                      right: 20, top: 25,
                                      child: Icon(Icons.lock, size: 25, color: Colors.grey,),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 10,),
                              Align(
                                alignment: Alignment.centerRight,
                                child: InkWell(
                                  onTap: (){},
                                  child: Text("Forgot password", style: TextStyle(color: Colors.grey, fontSize: 15),),
                                ),
                              ),
                              SizedBox(height: 20,),
                              Container(
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade800,
                                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                  ),
                                  height: 60,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                                  )
                              ),
                              SizedBox(height: 10,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text("Doesn\'t have an account yet?", style: TextStyle(color: Colors.grey, fontSize: 15),),
                                  SizedBox(width: 10,),
                                  InkWell(
                                    onTap: (){ Navigator.pushReplacementNamed(context, "/register");},
                                    child: Text("Sign Up", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline,
                                    ),),
                                  )
                                ],
                              ),
                              SizedBox(height: 30,),

                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ]
            ),
          ),
        )
    );
  }
}