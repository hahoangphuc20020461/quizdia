// ignore_for_file: public_member_api_docs, sort_constructors_first


import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/scheduler/ticker.dart';
import 'package:get/get.dart';

import '../Model/data_level1.dart';
import '../Model/data_level2.dart';
import '../Model/data_level3.dart';
import '../Model/data_level4.dart';
import '../UI/scorelv1_screen.dart';

class QuestionControl extends GetxController   {//with SingleGetTickerProviderMixin

  List<DataLevel1> get questions => _questions;

  List<DataLevel1> _questions = data1.map((questions) => DataLevel1(id: questions['id'],
   answer_index: questions['answer_index'],
    question: questions['question'],
     options: questions['options'])).toList();

  List<DataLevel2> get questions2 => _questions2;

  List<DataLevel2> _questions2 = data2.map((questions) => DataLevel2(id: questions['id'],
   answer_index: questions['answer_index'],
    question: questions['question'],
     options: questions['options'])).toList();
  
  List<DataLevel3> get questions3 => _questions3;

  List<DataLevel3> _questions3 = data3.map((questions) => DataLevel3(id: questions['id'],
   answer_index: questions['answer_index'],
    question: questions['question'],
     options: questions['options'])).toList();

  List<DataLevel4> get questions4 => _questions4;

  List<DataLevel4> _questions4 = data4.map((questions) => DataLevel4(id: questions['id'],
   answer_index: questions['answer_index'],
    question: questions['question'],
     options: questions['options'])).toList();

  bool isAnswer = false;
  bool get isAns => isAnswer;

  int? answerIndex;
  int? get ansIndex => answerIndex;

  int? selectAnswer;
  int? get selectAns => selectAnswer;

  RxInt questionNumberId = 1.obs;
  RxInt get questionNumId => questionNumberId;

  int? numberOfCorrectAnswer = 0;
  int? get numOfCorrectAns => numberOfCorrectAnswer;

  int? numberOfCorrectAnswer2 = 0;
  int? get numOfCorrectAns2 => numberOfCorrectAnswer2;

  int? numberOfCorrectAnswer3 = 0;
  int? get numOfCorrectAns3 => numberOfCorrectAnswer3;

  int? numberOfCorrectAnswer4 = 0;
  int? get numOfCorrectAns4 => numberOfCorrectAnswer4;

  
  @override
  void onInit() {
     //animationController = AnimationController(vsync: this, duration: Duration(seconds: 20));
    //  animation = Tween<double>(begin: 0, end: 1).animate(animationController!)
    //  ..addListener(() {
    //   update();
    // });
    // TODO: implement onInit
    //animationController?.forward();
    super.onInit();
  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();
    //animationController!.dispose();
    //super.dispose();
  }
  
  void checkAns (int select, DataLevel1 dataLevel1) {
    isAnswer = true;
    answerIndex = dataLevel1.answer_index;
    selectAnswer = select;

    if(answerIndex == selectAnswer) {
      numberOfCorrectAnswer = numberOfCorrectAnswer! + 1;
      print('cc + $numberOfCorrectAnswer');
    }
    //print(dataLevel1.answer_index);
    //animationController?.stop();
    update();
  }
  void checkAns2 (int select, DataLevel2 dataLevel2) {
    isAnswer = true;
    answerIndex = dataLevel2.answer_index;
    selectAnswer = select;

    if(answerIndex == selectAnswer) {
      numberOfCorrectAnswer2 = numberOfCorrectAnswer2! + 1;
      print('cc + $numberOfCorrectAnswer2');
    }
    //print(dataLevel1.answer_index);
    //animationController?.stop();
    update();
  }
  void checkAns3 (int select, DataLevel3 dataLevel3) {
    isAnswer = true;
    answerIndex = dataLevel3.answer_index;
    selectAnswer = select;

    if(answerIndex == selectAnswer) {
      numberOfCorrectAnswer3 = numberOfCorrectAnswer3! + 1;
      print('cc + $numberOfCorrectAnswer3');
    }
    //print(dataLevel1.answer_index);
    //animationController?.stop();
    update();
  }
  void checkAns4 (int select, DataLevel4 dataLevel4) {
    isAnswer = true;
    answerIndex = dataLevel4.answer_index;
    selectAnswer = select;

    if(answerIndex == selectAnswer) {
      numberOfCorrectAnswer4 = numberOfCorrectAnswer4! + 1;
      print('cc + $numberOfCorrectAnswer4');
    }
    //print(dataLevel1.answer_index);
    //animationController?.stop();
    update();
  }

  void nextpageChange(int index) {
    isAnswer = false;
    questionNumberId.value = index + 1;
    refresh();

    //Get.to(ScoreLv1Page(title: '',));
  }
  
  
}
