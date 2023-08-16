import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import 'splash_screen.dart';

class BeginPage extends StatefulWidget {
  const BeginPage({super.key, required this.title});

  final String title;


  @override
  State<BeginPage> createState() => _BeginPageState();
}

class _BeginPageState extends State<BeginPage> {
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    delayPage();
  }

  delayPage() async {
    Future.delayed(Duration(milliseconds: 990), (){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context) => SplashPage(title: ''),), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFf1f1f1),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            // Image(image: AssetImage("assets/quiz-logo_2728-12.png"),
         
            // height: 220,
            // width: 220,
            // fit: BoxFit.fill, 
            // ),
        
          Center(
            child: Lottie.asset('assets/loading.json',
            height: 220,
            width: 220,
            reverse: true,
            repeat: true
            ),
          )
        ],
      )
    );
  }
}