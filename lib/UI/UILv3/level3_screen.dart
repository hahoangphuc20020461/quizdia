// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:quizdia/Controller/question_controller.dart';
import 'package:quizdia/Model/data_level1.dart';
import 'package:quizdia/UI/UILv3/scorelv3_screen.dart';
import 'package:quizdia/UI/scorelv1_screen.dart';

import '../../Model/data_level3.dart';

class Level3Page extends StatefulWidget {
  const Level3Page({super.key, required this.title});
  final String title;

  @override
  State<Level3Page> createState() => _Level3PageState();
}

class _Level3PageState extends State<Level3Page> {
  CountDownController _controller = CountDownController();
  bool _isPause = false;

  final controller = PageController();

  int maxPage = 0;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    controller.addListener(() {
      if (controller.page != null) {
        if (controller.page! < maxPage) {
          controller.jumpToPage(maxPage);
        } else {
          maxPage = controller.page!.toInt();
        }
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    QuestionControl questionControl = Get.put(QuestionControl());
    DataLevel3 dataLevel3;

    return 
       Scaffold(
        appBar: AppBar(
          title: Text('Level3'),
          centerTitle: true,
        ),
        body: Stack(children: <Widget>[
          Container(
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/Screenshot 2023-07-14 110437.png'),
                    fit: BoxFit.fill)),
          ),
          Container(
            alignment: Alignment.topCenter,
            //padding: EdgeInsets.fromLTRB(0, 5, 0, 0),
            child: CircularCountDownTimer(
              width: MediaQuery.of(context).size.width / 7,
              height: MediaQuery.of(context).size.height / 7,
              duration: 70,
              fillColor: Colors.purple,
              ringColor: Colors.white,
              controller: _controller,
              backgroundColor: Colors.white54,
              //strokeWidth: 10.0,
              strokeCap: StrokeCap.round,
              isTimerTextShown: true,
              isReverse: false,
              onComplete: () {
                //_controller.restart();
                Navigator.push(context, MaterialPageRoute(builder: (context) => ScoreLv3Page(title: '')));
                //questionControl.nextQuestion();
              },
            ),
          ),
          //Padding(padding: EdgeInsets.all(12)),
          Column(
            children: [
              //question_screen(),
              Container(
                  alignment: Alignment.topCenter,
                  padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
                  child: Obx(
                    () => Text.rich(
                      TextSpan(
                        text:
                            'Question ${questionControl.questionNumberId.value}',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(color: Colors.black),
                        children: [
                          TextSpan(
                            text: '/${questionControl.questions3.length}',
                            style: Theme.of(context)
                                .textTheme
                                .headlineSmall
                                ?.copyWith(color: Color.fromARGB(190, 0, 0, 0)),
                          ),
                        ],
                      ),
                    ),
                  )),
              Divider(
                thickness: 1.5,
              ),
              SizedBox(height: 20),
    
              Expanded(
                  child: PageView.builder(
                controller: controller,
                onPageChanged: (index) {
                  questionControl.nextpageChange(index);
                },
                itemBuilder: (BuildContext context, int index) => content_screen(
                  dataLevel3: questionControl.questions3[index],
                ),
                itemCount: questionControl.questions3.length,
              )),
    
              // IconButton(onPressed: () {}, icon: Icon(Icons.accessible_forward))
              TextButton.icon(onPressed: () {
              // Get.to(() =>ScoreLv1Page(title: '',),
              // transition: Transition.fadeIn,
              // duration: Duration(milliseconds: 700)
              // );
              Navigator.push(context, MaterialPageRoute(builder: (context) => ScoreLv3Page(title: '')));
            },
             icon: Icon(Icons.assessment_outlined,
             size: 30,), 
             label: Text('Submit',
             style: TextStyle(fontSize: 30),),
             
             )
            ],
          ),
        ]),
      );
    
  }
}

class content_screen extends StatelessWidget {
  const content_screen({Key? key, required this.dataLevel3}) : super(key: key);

  final DataLevel3 dataLevel3;

  @override
  Widget build(BuildContext context) {
    QuestionControl questionControl = Get.put(QuestionControl());

    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: <Widget>[
          Text(
            dataLevel3.question.toString(),
            style: Theme.of(context)
                .textTheme
                .titleLarge
                ?.copyWith(color: Colors.black),
          ),
          ...List.generate(
              dataLevel3.options!.length,
              (index) => optional(
                  text: dataLevel3.options![index],
                  ind: index,
                  press: () {
                    questionControl.checkAns3(index, dataLevel3);
                  })),

          // Container(
          //   margin: EdgeInsets.only(top: 20),
          //   padding: EdgeInsets.all(10),
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.black38),
          //     borderRadius: BorderRadius.circular(20),
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: <Widget>[
          //       Text('data',
          //       style: TextStyle(fontSize: 15),
          //       ),
          //       Container(
          //         height: 26,
          //         width: 26,
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.black38),
          //     borderRadius: BorderRadius.circular(20),
          //       ),
          //       ),

          //     ],
          //   ),
          // ),
          // Container(
          //   margin: EdgeInsets.only(top: 20),
          //   padding: EdgeInsets.all(10),
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.black38),
          //     borderRadius: BorderRadius.circular(20),
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: <Widget>[
          //       Text('data',
          //       style: TextStyle(fontSize: 15),
          //       ),
          //       Container(
          //         height: 26,
          //         width: 26,
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.black38),
          //     borderRadius: BorderRadius.circular(20),
          //       ),
          //       ),

          //     ],
          //   ),
          // ),
          // Container(
          //   margin: EdgeInsets.only(top: 20),
          //   padding: EdgeInsets.all(10),
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.black38),
          //     borderRadius: BorderRadius.circular(20),
          //   ),
          //   child: Row(
          //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //     children: <Widget>[
          //       Text('data',
          //       style: TextStyle(fontSize: 15),
          //       ),
          //       Container(
          //         height: 26,
          //         width: 26,
          //   decoration: BoxDecoration(
          //     border: Border.all(color: Colors.black38),
          //     borderRadius: BorderRadius.circular(20),
          //       ),
          //       ),

          //     ],
          //   ),
          // )
        ],
      ),
    );
  }
}

class optional extends StatelessWidget {
  const optional({
    Key? key,
    required this.text,
    required this.ind,
    required this.press,
  }) : super(key: key);
  final String text;
  final int ind;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    //int cc;
    return GetBuilder<QuestionControl>(
      init: QuestionControl(),
      builder: (QuestionControl controller) {
        Color getRightColor() {
          if (controller.isAnswer) {
            if (ind == controller.ansIndex) {
              return Colors.green;
            } //&& )ind == controller.selectAns && controller.selectAns != controller.ansIndex
            if (ind == controller.selectAns &&
                controller.selectAns != controller.ansIndex) {
              //print(controller.answerIndex);
              return Colors.red;
            }
          }
          return Colors.black38;
        }

        return InkWell(
          onTap: press,
          child: Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(color: getRightColor()),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Text(
                    '${ind + 1}. $text',
                    style: TextStyle(
                      fontSize: 15,
                    ),
                  ),
                ),
                Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    color: getRightColor() == Colors.black38
                        ? Colors.transparent
                        : getRightColor(),
                    border: Border.all(color: getRightColor()),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: getRightColor() == Colors.black38
                      ? null
                      : Icon(getRightColor() == Colors.green
                          ? Icons.done
                          : Icons.close),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class question_screen extends StatelessWidget {
  const question_screen({
    //required this.dataLevel1,
    super.key,
  });

  //final DataLevel1  dataLevel1;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      padding: EdgeInsets.fromLTRB(0, 100, 0, 0),
      child: Text.rich(
        TextSpan(
          text: 'Question 1',
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(color: Colors.black),
          children: [
            TextSpan(
              text: '/10',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(color: Color.fromARGB(190, 0, 0, 0)),
            ),
          ],
        ),
      ),
    );
  }
}
