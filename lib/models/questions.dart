import 'package:personality_test/models/personality_type.dart';

import 'answers.dart';

int currentQuestionIndex = 0;
Map<int, PersonalityType> selectedAnswers = {};

class QuestionModel{
  final String questionText;
  final List<AnswerModel> theAnswers;

  QuestionModel({
    required this.questionText,
    required this.theAnswers
  });
}

final List<QuestionModel> questions = [
  QuestionModel( //q1
      questionText: "Q1: How do you approach a difficult decision?",
      theAnswers: [
        AnswerModel(
            text: "a) Analyze all options logically",
            personalityType: PersonalityType.Thinker,
        ),
        AnswerModel(
            text: "b) Go with what feels right emotionally",
            personalityType: PersonalityType.Feeler,
        ),
        AnswerModel(
            text: "c) Make a checklist and plan it out",
            personalityType: PersonalityType.Planner,
        ),
        AnswerModel(
            text: "d) Take a leap and deal with results later",
            personalityType: PersonalityType.Adventurer,
        ),
      ],
  ),

  QuestionModel( //q2
    questionText: "Q2: What excites you the most?",
    theAnswers: [
      AnswerModel(
        text: "a) Solving complex problems",
        personalityType: PersonalityType.Thinker,
      ),
      AnswerModel(
        text: "b) Connecting deeply with others",
        personalityType: PersonalityType.Feeler,
      ),
      AnswerModel(
        text: "c) Creating a clear path to your goals",
        personalityType: PersonalityType.Planner,
      ),
      AnswerModel(
        text: "d) Exploring something new",
        personalityType: PersonalityType.Adventurer,
      ),
    ],
  ),

  QuestionModel( //q3
    questionText: "Q3: Which best describes your work style?",
    theAnswers: [
      AnswerModel(
        text: "a) Detail-focused and logical",
        personalityType: PersonalityType.Thinker,
      ),
      AnswerModel(
        text: "b) People-centered and intuitive",
        personalityType: PersonalityType.Feeler,
      ),
      AnswerModel(
        text: "c) Organized and systematic",
        personalityType: PersonalityType.Planner,
      ),
      AnswerModel(
        text: "d) Flexible and spontaneous",
        personalityType: PersonalityType.Adventurer,
      ),
    ],
  ),

  QuestionModel( //q4
    questionText: "Q4: How do you recharge after a long day?",
    theAnswers: [
      AnswerModel(
        text: "a) Quiet reflection or reading",
        personalityType: PersonalityType.Thinker,
      ),
      AnswerModel(
        text: "b) Spending time with close friends",
        personalityType: PersonalityType.Feeler,
      ),
      AnswerModel(
        text: "c) Planning tomorrow's tasks",
        personalityType: PersonalityType.Planner,
      ),
      AnswerModel(
        text: "d) Doing something active or exciting",
        personalityType: PersonalityType.Adventurer,
      ),
    ],
  ),

  QuestionModel( //q5
    questionText: "Q5: You're most comfortable when...",
    theAnswers: [
      AnswerModel(
        text: "a) Things make logical sense",
        personalityType: PersonalityType.Thinker,
      ),
      AnswerModel(
        text: "b) Everyone is getting along",
        personalityType: PersonalityType.Feeler,
      ),
      AnswerModel(
        text: "c) There's a clear structure",
        personalityType: PersonalityType.Planner,
      ),
      AnswerModel(
        text: "d) You're free to try new things",
        personalityType: PersonalityType.Adventurer,
      ),
    ],
  ),

  QuestionModel( //q6
    questionText: "Q6: Your biggest strength is...",
    theAnswers: [
      AnswerModel(
        text: "a) Thinking critically",
        personalityType: PersonalityType.Thinker,
      ),
      AnswerModel(
        text: "b) Empathizing with others",
        personalityType: PersonalityType.Feeler,
      ),
      AnswerModel(
        text: "c) Staying organized",
        personalityType: PersonalityType.Planner,
      ),
      AnswerModel(
        text: "d) Being adventurous",
        personalityType: PersonalityType.Adventurer,
      ),
    ],
  ),

];

