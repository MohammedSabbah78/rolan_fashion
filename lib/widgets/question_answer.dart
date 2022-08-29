import 'package:flutter/material.dart';

class QuestionAnswer extends StatefulWidget {
   QuestionAnswer({Key? key,
}) : super(key: key);

  @override
  _QuestionAnswerState createState() => _QuestionAnswerState();
}

class _QuestionAnswerState extends State<QuestionAnswer> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.symmetric(vertical:5),
        itemCount:7,

        itemBuilder: (context, index) {
          return ListTile(title: Text('Whats Your Name'),
          subtitle:
            Text('Mohammed'),
            leading: Icon(Icons.question_answer),
          );
        },);
  }
}
