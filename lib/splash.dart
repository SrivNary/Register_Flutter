import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void initState() {
    Timer(const Duration(seconds: 7), () {
      Navigator.pushReplacementNamed(context, '/register');
    });
    super.initState();
  }

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
            padding: EdgeInsets.only(top: 100),
            child: SizedBox(
              width: double.infinity,
              child: Column(
                  children: [
                    Image.asset("assets/images/logo.png", width: 150, height: 150,),
                    SizedBox(height: 50,),
                    Text("សាកលវិទ្យាល័យ ជាតិគ្រប់គ្រង", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                    Text("National University of Management", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                    SizedBox(height: 20,),
                    Text("មហាវិទ្យាល័យ ពត៌មានវិទ្យា", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 23),),
                    Text("Faculty of Information Technology", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
                  ]
              ),
            ),
          ),
        )
    );
  }
}