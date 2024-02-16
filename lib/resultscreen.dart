import 'package:flutter/material.dart';
import 'package:quizapp/main.dart';
import 'package:quizapp/questions.dart';

class resultScreen extends StatefulWidget {
  int correctAnswer;
  List<String>selectedAnswers=[];

  List<String> result=[];

   resultScreen({super.key,required this.correctAnswer,required  this.selectedAnswers,required this.result});

  @override
  State<resultScreen> createState() => _resultScreenState();
}

class _resultScreenState extends State<resultScreen> {

  @override
  Widget build(BuildContext context) {
    int correct=widget.correctAnswer;
    int wrong=   quizQuestions.length-correct;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Your Score",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
          SizedBox(height: 20,)
          ,Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(shape: BoxShape.circle,gradient: LinearGradient(colors: [Colors.green,Colors.greenAccent])),
                child: Center(child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("$correct/${quizQuestions.length}",textAlign: TextAlign.center,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w800),),
                  ],
                )),
              ),
            ],
          ),
          SizedBox(height: 20,),
          Divider(indent: 30,endIndent: 40,color: Colors.purple,thickness: 1.5,)
          ,SizedBox(height: 20,)
          , Container(
            height: 50,
            width: 200,
            //color: Colors.blueGrey,
            decoration: BoxDecoration(gradient: LinearGradient(colors: [Colors.black38,Colors.white60]),borderRadius: BorderRadius.circular(20)),
          child: Center(child: Text("Correct Answers",style: TextStyle(fontSize: 20),)),
          )
         , SizedBox(height: 500,width: 300,child: ListView.builder(itemCount: correct,itemBuilder:(context,int index ){
           return Column(
             children: [
               Container(
                 decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.cyan, gradient: LinearGradient(colors: [Colors.greenAccent,Colors.green],begin: Alignment.topRight,end: Alignment.bottomLeft)),
                 child: ListTile(
                   title: Text("${widget.result[index]}"),
                  // leading: Icon(Icons.c),

                 ),
               ),
               SizedBox(
                 height: 6,
               )
             ],
           );
          }),)
        ],




      ),
        floatingActionButton:FloatingActionButton(
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> MyApp()));
        },child: Text("Retry"),
    ),
    );
  }
}
