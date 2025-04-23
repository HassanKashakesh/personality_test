import 'package:flutter/material.dart';
import 'package:personality_test/models/personality_type.dart';
import 'package:personality_test/widgets/resultscreen.dart';
import '../models/questions.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {

  @override
  Widget build(BuildContext context) {
    final question = questions[currentQuestionIndex];

    return Scaffold(

      body:

        Container(

          alignment: Alignment.center,
          padding: EdgeInsets.all(30),
          color: Colors.teal,
          child: Center(

            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  question.questionText,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 30,),
                ...question.theAnswers.map((answer) {
                  return Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: SizedBox(
                      width: 350,
                      child: ElevatedButton(
                        onPressed: ()=> handleAnswer(answer.personalityType),
                        child: Text(answer.text),
                      ),
                    ),
                  );
                }).toList()

              ],
            ),

          ),

        )

    );
  }
  void handleAnswer(PersonalityType personalityType) {
    setState(() {
      selectedAnswers[currentQuestionIndex] = personalityType; // Save answer

      if (currentQuestionIndex < questions.length - 1) {
        currentQuestionIndex++;
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ResultScreen(selectedAnswers: selectedAnswers),
          ),
        );
      }
    });
  }


}
