import 'package:flutter/material.dart';
import 'package:quizapp/qn.dart';

class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              myList[index].qus,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: (){
                setState((){
                  nextqn();
                  check(true);
                });
                },
              child: Text('TRUE'),
            ),
            SizedBox(height: 30),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
              ),
              onPressed: () {setState((){
                nextqn();
                check(false);
              });},
              child: Text('FALSE'),
            ),
          Text(result,style:TextStyle(color:Colors.white),)
          ],
        ),
      ),
    );
  }

  List myList = [
    Quiz(qus: 'All dogs have tails', ans: false),
    Quiz(qus: 'The moon orbits around Earth', ans: true),
    Quiz(qus: 'Cats always land on their feet', ans: true),
    Quiz(qus: 'Humans have four stomachs.', ans: false),
    Quiz(qus: 'Ostriches can fly', ans: false),
  ];

  int index = 0;
  String result='';

  void nextqn() {
    if (index < myList.length) {
      index++;
    }
  }

  void check(bool answer) {
    print (answer);
    if (answer == myList[index-1].ans) {
      //print('correct answer');
      result='correct answer';
    }
    else {
      //print('wrong answer');
      result='wrong answer';
    }
  }



}
