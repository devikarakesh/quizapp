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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [


          TextButton(onPressed: (){}, child:Text('TRUE')),
          TextButton(onPressed: (){}, child:Text('FALSE')),
          ],
                ),

                );
  }
}
