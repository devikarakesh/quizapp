import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quizapp/questions.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 3), () {Navigator.push(context, MaterialPageRoute(builder: (context) => Question()));
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blueAccent,
      body:Column(
        mainAxisAlignment:MainAxisAlignment.center,
        children: [
          Center(
            child:Image.network('https://cdn.pixabay.com/photo/2017/06/22/20/33/quiz-2432440_640.png',height:500,width:1000,),
          ),
        ],
      ),
    );
  }
}
