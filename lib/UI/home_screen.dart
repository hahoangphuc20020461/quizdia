
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'UILv2/level2_screen.dart';
import 'UILv3/level3_screen.dart';
import 'UILv4/level4_screen.dart';
import 'begin_screen.dart';
import 'level1_screen.dart';



class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const Color kPrimaryColor = Color(0xFF11b8da);
static const Color kMoneyColor = Color(0xFFFDB74D);
static const Color kDownloadColor = Color(0xFFb5b5b5);
static const Color kbackgroundColor = Color(0xFFf1f1f1);

  // late TextEditingController name;
  // String string = 'Anonymouse';
  // List<String> list = [];

  // Future<String?> openDialog() => showDialog<String>(context: context, 
  // builder: (context) => AlertDialog(
  //   content: TextField(decoration: InputDecoration(hintText: 'Your Identity'),
  //   autofocus: true,
  //   controller: name,
  //   ),
  //   actions: <Widget>[
  //     ElevatedButton(onPressed: (){
  //       //subMit();
  //       List<String> str = List<String>.from(name.text.split(" "));
  //       setState(() {
  //         string = str.toString();
  //       });
  //     }, child: Text('OK', 
  //     style: TextStyle(color: kbackgroundColor),
  //       ),
  //     ),
  //     TextButton(onPressed: (){}, child: Text('Cancel', 
  //     style: TextStyle(color: kPrimaryColor),))
  //   ],
  // )
  // );

  // void subMit() {
  //   Navigator.of(context).pop(name.text);
  // }

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   name = TextEditingController();
  // }

  // @override
  // void dispose() {
  //   // TODO: implement dispose
  //   super.dispose();
  //   name.dispose();
  // }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return 
     Scaffold(
        backgroundColor: kbackgroundColor,
        appBar: AppBar(
          backgroundColor: kPrimaryColor,
          centerTitle: true,
          title: Text(
            "Welcome Homer",
            style: TextStyle(
              fontSize: 20,
              color: kbackgroundColor,
            ),
          ),
          
        ),
        body: Stack(
          children: [
            // Container(
            //     height: double.infinity,
            //     width: double.infinity,
            //   decoration: BoxDecoration(
            //     image: DecorationImage(image: AssetImage('assets/Screenshot 2023-07-14 110437.png',
            //     ),
                
            //     fit: BoxFit.fill,
            //     opacity: 0.3
            //     ),
            //   ),
            //    ),
              Center(
                child: Column(
                 mainAxisAlignment: MainAxisAlignment.center,
                 //crossAxisAlignment: CrossAxisAlignment.center,
                 children: <Widget>[
                   InkWell(
                     splashColor: Colors.black26,
                     onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Level1Page(title: '')));
                    // Get.to(() => Level1Page(title: ''),
                    // transition: Transition.zoom,
                    // duration: Duration(milliseconds: 700),
                    // );
                     },
                     child: Container(
                       child: Ink.image(image:  AssetImage('assets/Screenshot_2023-07-13_224348-removebg-preview.png'),
                       fit: BoxFit.cover,
                       ),
                       width:120,
                       height: 60,
                       // decoration: BoxDecoration(
                       //   image: DecorationImage(image: AssetImage('assets/Screenshot_2023-07-13_224348-removebg-preview.png'),
                       //   fit: BoxFit.cover
                       //   ),  
                       // ),
                     )
                   ),
                   Padding(padding: EdgeInsets.all(12)),
                   InkWell(
                     splashColor: Colors.black26,
                     onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Level2Page(title: '')));
                     },
                     child: Container(
                       child: Ink.image(image:  AssetImage('assets/Screenshot_2023-07-13_224420-removebg-preview.png'),
                       fit: BoxFit.cover,
                       
                       ),
                       width:120,
                       height: 60,
                       // decoration: BoxDecoration(
                       //   image: DecorationImage(image: AssetImage('assets/Screenshot_2023-07-13_224348-removebg-preview.png'),
                       //   fit: BoxFit.cover
                       //   ),  
                       // ),
                     )
                   ),
                   Padding(padding: EdgeInsets.all(12)),
                   InkWell(
                     splashColor: Colors.black26,
                     onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Level3Page(title: '')));
                     },
                     child: Container(
                       child: Ink.image(image:  AssetImage('assets/Screenshot_2023-07-13_224433-removebg-preview.png'),
                       fit: BoxFit.cover,
                       ),
                       width:120,
                       height: 60,
                       // decoration: BoxDecoration(
                       //   image: DecorationImage(image: AssetImage('assets/Screenshot_2023-07-13_224348-removebg-preview.png'),
                       //   fit: BoxFit.cover
                       //   ),  
                       // ),
                     )
                   ),
                   Padding(padding: EdgeInsets.all(12)),
                   InkWell(
                     splashColor: Colors.black26,
                     onTap: () {
                     Navigator.push(context, MaterialPageRoute(builder: (context) => Level4Page(title: '')));
                     },
                     child: Container(
                       child: Ink.image(image:  AssetImage('assets/Screenshot_2023-07-13_224450-removebg-preview.png'),
                       fit: BoxFit.cover,
                       ),
                       width:120,
                       height: 60,
                       // decoration: BoxDecoration(
                       //   image: DecorationImage(image: AssetImage('assets/Screenshot_2023-07-13_224348-removebg-preview.png'),
                       //   fit: BoxFit.cover
                       //   ),  
                       // ),
                     )
                   ),
                 ],
                         ),
              ),
             
          ]
        )
      );
    
  }
}
