import 'package:flutter/material.dart';
import 'package:quizapp/QuizScreen.dart';
import 'package:quizapp/resultscreen.dart';

class submitScreen extends StatelessWidget {
  int correctAnswer;
  List<String> selectedQuestions=[];

  List<String> result=[];
   submitScreen({super.key,required this.correctAnswer,required this.selectedQuestions,required this.result});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [Colors.black12,Colors.black26],begin: Alignment.topRight,end: Alignment.bottomLeft)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 500,
                  width: 300,
                  child: ListView.builder(
                    itemCount: selectedQuestions.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.cyan, gradient: LinearGradient(colors: [Colors.black26,Colors.black12],begin: Alignment.topRight,end: Alignment.bottomLeft)),
                            child: ListTile(
                              title: Text(selectedQuestions[index]),
                            ),
                          ),
                          SizedBox(
                            height: 6,
                          )
                        ],
                      );
                    },
                  ),
                ),
              ],
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> resultScreen(correctAnswer: correctAnswer,selectedAnswers: selectedQuestions,result: result,)));},child: Text("Submit the selected Answer"),)
          ],
        ),
      ),
    );
  }
}
