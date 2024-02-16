import 'package:flutter/material.dart';
import 'package:quizapp/questions.dart';
import 'main.dart';
import 'package:quizapp/resultscreen.dart';
import 'dart:math';
import 'submitscreen.dart';



class quizscreen extends StatefulWidget {
  const quizscreen({super.key});



  @override
  State<quizscreen> createState() => _quizscreenState();
}

class _quizscreenState extends State<quizscreen> {
  int currentQuestionIndex = 0;

  List<String> selectedQuestions=[];

  List <String> result=[];
  var rng = Random();

  int correctAnswer=0;
  //int wrongAnswer=0;
  void nextQuestion() {
    setState(() {
      if(currentQuestionIndex<quizQuestions.length-1){
        currentQuestionIndex++;
      }
      else {
        Navigator.push(context, MaterialPageRoute(builder: (context)=> submitScreen(correctAnswer: correctAnswer,selectedQuestions: selectedQuestions,result: result,)));
      }

    });
  }


  @override
  Widget build(BuildContext context) {

    quizQuestions.forEach((question) {
      question.answers.shuffle(rng);
    });

    return Scaffold(
      body: Container(
        decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.black12,Colors.black26],begin: Alignment.topRight,end: Alignment.bottomLeft)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 80,
                  width: 312,
                  child: Text("${quizQuestions[currentQuestionIndex].question}",
                    style: TextStyle(fontSize: 20,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),),
                ),
                SizedBox(
                  height: 300,
                  width: 300,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: quizQuestions[currentQuestionIndex].answers.map((answer) {
                      return  ElevatedButton(
                        style: ButtonStyle(fixedSize:MaterialStatePropertyAll(Size(300,30)) ),
                        onPressed: () {
                          if (answer == quizQuestions[currentQuestionIndex].correctanswer) {
                            // The correct answer was selected
                            //print('Correct!');
                            correctAnswer++;
                            selectedQuestions.add(quizQuestions[currentQuestionIndex].correctanswer);
                            result.add(answer);

                          } else {
                            // An incorrect answer was selected
                            //print('Incorrect...');
                            selectedQuestions.add(answer);
                            //wrongAnswer++;
                          }

                          nextQuestion();
                        },
                        child: Text(answer, style: TextStyle(fontSize: 20)),
                      );
                    }).toList(),

                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}







