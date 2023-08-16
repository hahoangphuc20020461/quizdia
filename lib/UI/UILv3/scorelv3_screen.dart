
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:quizdia/Controller/question_controller.dart';

import '../home_screen.dart';




class ScoreLv3Page extends StatefulWidget {
  const ScoreLv3Page({super.key, required this.title});
  final String title;

  @override
  State<ScoreLv3Page> createState() => _ScoreLv3PageState();
}


class _ScoreLv3PageState extends State<ScoreLv3Page> {
  static const Color kPrimaryColor = Color(0xFF11b8da);
static const Color kMoneyColor = Color(0xFFFDB74D);
static const Color kDownloadColor = Color(0xFFb5b5b5);
static const Color kbackgroundColor = Color(0xFFf1f1f1);
QuestionControl questionControl = Get.put(QuestionControl());

@override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
        backgroundColor: kbackgroundColor,
        
        body: Stack(
          children: [
            Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/Screenshot 2023-07-14 110437.png'),
                  fit: BoxFit.fill)),
        ),
          Container(
            padding: EdgeInsets.fromLTRB(0, MediaQuery.of(context).size.width / 3, 0, 0),
            child: Column(
              children: [
            Center(
                    child: Image.asset('assets/yc-removebg-preview-removebg-preview.png',
                            alignment: Alignment.center,
                            ),
                  ),
            Center(
              child: Text('${questionControl.numberOfCorrectAnswer3}',
              style: TextStyle(
                color: Colors.purple,
                fontFamily: 'Amatic',
                fontSize: 30
              ),
              
              ),
            ),
            
            TextButton.icon(onPressed: () {
              // Get.to(() =>HomePage(title: '',),
              // transition: Transition.fadeIn,
              // duration: Duration(milliseconds: 700)
              // );
              Navigator.push(context, MaterialPageRoute(builder: (context) => HomePage(title: '')));
            },
             icon: Icon(Icons.arrow_circle_left_outlined,
             size: 30,), 
             label: Text('Back',
             style: TextStyle(fontSize: 30),),
             
             )
              ],
            ),
          ),
          
        
            
              // Center(
              //   child: Column(
              //    mainAxisAlignment: MainAxisAlignment.center,
              //    //crossAxisAlignment: CrossAxisAlignment.center,
              //    children: <Widget>[
              //      InkWell(
              //        splashColor: Colors.black26,
              //        onTap: () {
              //       //Navigator.push(context, MaterialPageRoute(builder: (context) => Level1Page(title: '')));
              //       Get.to(() => Level1Page(title: ''),
              //       transition: Transition.zoom,
              //       duration: Duration(milliseconds: 700),
              //       );
              //        },
              //        child: Container(
              //          child: Ink.image(image:  AssetImage('assets/Screenshot_2023-07-13_224348-removebg-preview.png'),
              //          fit: BoxFit.cover,
              //          ),
              //          width:120,
              //          height: 60,
              //          // decoration: BoxDecoration(
              //          //   image: DecorationImage(image: AssetImage('assets/Screenshot_2023-07-13_224348-removebg-preview.png'),
              //          //   fit: BoxFit.cover
              //          //   ),  
              //          // ),
              //        )
              //      ),
              //      Padding(padding: EdgeInsets.all(12)),
              //      InkWell(
              //        splashColor: Colors.black26,
              //        onTap: () {
              //        Navigator.push(context, MaterialPageRoute(builder: (context) => BeginPage(title: '')));
              //        },
              //        child: Container(
              //          child: Ink.image(image:  AssetImage('assets/Screenshot_2023-07-13_224420-removebg-preview.png'),
              //          fit: BoxFit.cover,
                       
              //          ),
              //          width:120,
              //          height: 60,
              //          // decoration: BoxDecoration(
              //          //   image: DecorationImage(image: AssetImage('assets/Screenshot_2023-07-13_224348-removebg-preview.png'),
              //          //   fit: BoxFit.cover
              //          //   ),  
              //          // ),
              //        )
              //      ),
              //      Padding(padding: EdgeInsets.all(12)),
              //      InkWell(
              //        splashColor: Colors.black26,
              //        onTap: () {
              //        Navigator.push(context, MaterialPageRoute(builder: (context) => BeginPage(title: '')));
              //        },
              //        child: Container(
              //          child: Ink.image(image:  AssetImage('assets/Screenshot_2023-07-13_224433-removebg-preview.png'),
              //          fit: BoxFit.cover,
              //          ),
              //          width:120,
              //          height: 60,
              //          // decoration: BoxDecoration(
              //          //   image: DecorationImage(image: AssetImage('assets/Screenshot_2023-07-13_224348-removebg-preview.png'),
              //          //   fit: BoxFit.cover
              //          //   ),  
              //          // ),
              //        )
              //      ),
              //      Padding(padding: EdgeInsets.all(12)),
              //      InkWell(
              //        splashColor: Colors.black26,
              //        onTap: () {
              //        Navigator.push(context, MaterialPageRoute(builder: (context) => BeginPage(title: '')));
              //        },
              //        child: Container(
              //          child: Ink.image(image:  AssetImage('assets/Screenshot_2023-07-13_224450-removebg-preview.png'),
              //          fit: BoxFit.cover,
              //          ),
              //          width:120,
              //          height: 60,
              //          // decoration: BoxDecoration(
              //          //   image: DecorationImage(image: AssetImage('assets/Screenshot_2023-07-13_224348-removebg-preview.png'),
              //          //   fit: BoxFit.cover
              //          //   ),  
              //          // ),
              //        )
              //      ),
              //    ],
              //            ),
              // ),
             
          ]
        )
      );
    
  }
}
