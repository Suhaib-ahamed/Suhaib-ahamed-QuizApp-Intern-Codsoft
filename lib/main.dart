import 'package:flutter/material.dart';
import 'package:quizapp/questions.dart';
import 'QuizScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Builder(
        builder: (context) {
          return Scaffold(

            body: Container(
              decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.black12,Colors.black26],begin: Alignment.topRight,end: Alignment.bottomLeft)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Material(borderOnForeground: true,type: MaterialType.canvas,elevation: 10,borderRadius: BorderRadius.circular(20),child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Welcome to QuizApp",style: TextStyle(fontSize: 20,fontStyle: FontStyle.italic),),
                  ),),
                  SizedBox(height: 80,)
                  ,Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                   // Text("Welcome to Quiz "),
                           Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              image: DecorationImage(fit:BoxFit.cover ,image: AssetImage("assets/images/download1.jpeg")),
                             //   color: Color.fromRGBO(30, 20, 10, 100)
                            ),
                          ),

                     ],
                  ),
               // const Text("Sample")
                  SizedBox(height: 30,),
                  FilledButton(onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => quizscreen()),
                    );
                  }
                    ,style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blueGrey),elevation: MaterialStatePropertyAll(10)), child: Text("Start"),)

                ],
              ),
            ),
          );
        }
      ),
    );
  }
}


