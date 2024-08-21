import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}
enum SingingCharacter { male, female }
class _SignUpPageState extends State<SignUpPage> {
  SingingCharacter? _character = SingingCharacter.male;

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
                  SizedBox(height: 10,),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: ClipRRect(
                        borderRadius: const BorderRadius.all(Radius.circular(13)),
                        child: Container(
                          color: Colors.white70,
                          child: ListView(
                            children: [
                              Stack(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 50,
                                    child: Text(
                                      'Sign Up',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    bottom: 0,
                                    child: IconButton(
                                      icon: Icon(
                                        Icons.chevron_left,
                                        size: 35,
                                      ),
                                      onPressed: () { Navigator.pushReplacementNamed(context, '/login');},
                                    ),
                                  ),

                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.all(20),
                                child: Stack(
                                  children: [
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          border: UnderlineInputBorder(),
                                          label: Row(
                                            children: [
                                              Text("First Name", style: TextStyle(color: Colors.grey),),
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
                              Padding(
                                padding: EdgeInsets.all(20),
                                child: Stack(
                                  children: [
                                    TextFormField(
                                      decoration: const InputDecoration(
                                          border: UnderlineInputBorder(),
                                          label: Row(
                                            children: [
                                              Text("Last Name", style: TextStyle(color: Colors.grey),),
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
                              Padding(
                                padding: EdgeInsets.only(top: 20, bottom: 20),
                                child: Row(
                                  children: [
                                    Expanded(
                                      child: ListTile(
                                        title: const Text('Male'),
                                        leading: Radio<SingingCharacter>(
                                          value: SingingCharacter.male,
                                          groupValue: _character,
                                          onChanged: (SingingCharacter? value) {
                                            setState(() {
                                              _character = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: ListTile(
                                        title: const Text('Female'),
                                        leading: Radio<SingingCharacter>(
                                          value: SingingCharacter.female,
                                          groupValue: _character,
                                          onChanged: (SingingCharacter? value) {
                                            setState(() {
                                              _character = value;
                                            });
                                          },
                                        ),
                                      ),
                                    ),

                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(20),
                                child: Stack(
                                  children: [
                                    TextFormField(
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                          border: UnderlineInputBorder(),
                                          label: Row(
                                            children: [
                                              Text("Phone Number", style: TextStyle(color: Colors.grey),),
                                              SizedBox(width: 5,),
                                              Text("*", style: TextStyle(color: Colors.red),),
                                            ],
                                          )
                                      ),
                                    ),
                                    Positioned(
                                      right: 20, top: 25,
                                      child: Icon(Icons.phone_android_rounded, size: 25, color: Colors.grey,),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(20),
                                child: Stack(
                                  children: [
                                    TextFormField(
                                      obscureText: true,
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
                              Padding(
                                padding: EdgeInsets.all(20),
                                child: Stack(
                                  children: [
                                    TextFormField(
                                      obscureText: true,
                                      decoration: const InputDecoration(
                                          border: UnderlineInputBorder(),
                                          label: Row(
                                            children: [
                                              Text("Confirm Password", style: TextStyle(color: Colors.grey),),
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
                              SizedBox(height: 20,),
                              Container(
                                  margin: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: Colors.blue.shade800,
                                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                                  ),
                                  height: 60,
                                  child: Align(
                                    alignment: Alignment.center,
                                    child: Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18)),
                                  )
                              ),
                              SizedBox(height: 10,),
                              Padding(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text("Please accept our ", style: TextStyle(color: Colors.grey, fontSize: 15),),
                                    SizedBox(width: 10,),
                                    InkWell(
                                      child: Text("term & condition", style: TextStyle(color: Colors.blue, decoration: TextDecoration.underline,
                                      ),),
                                    )
                                  ],
                                ),
                              ),
                              SizedBox(height: 50,),

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