import 'package:flutter/material.dart';
import 'package:quizdia/UI/home_screen.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key, required this.title});
  final String title;

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    delayPage();
  }

  delayPage() async {
    Future.delayed(Duration(milliseconds: 990), (){
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder:(context) => HomePage(title: ''),), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {

    
    return Scaffold(
      body: Center(
        child: Image.asset('assets/unnamed.png',
        height: 200,
            width: 200,
            fit: BoxFit.fill,
        ),
      )
    );
  }
}