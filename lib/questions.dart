import 'package:flutter/material.dart';

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
              'Google was orinally known as backrub',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            TextButton(
              style:TextButton.styleFrom(
                backgroundColor:Colors.green,
              ),
              onPressed: () {},
              child: Text('TRUE'),
            ),
            SizedBox(height:30),
            TextButton(
              style:TextButton.styleFrom(
                backgroundColor:Colors.red,
              ),
                onPressed: () {},
                child: Text('FALSE'),
            ),
          ],
        ),
      ),
    );
  }
}
