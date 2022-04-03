import 'package:washer_quiz/models/quiz.dart';

const List<Quiz> quizList = [
  Quiz(
    image: "images/100.gif",
    options: ["つけ置き禁止", "家庭での洗濯禁止", "洗濯禁止", "手洗い禁止"],
    correctIndex: 2,
  ),
  Quiz(
    image: "images/110.gif",
    options: [
      "つけ置き可",
      "液温は40℃を限度とし、手洗いができる",
      "液温は60℃を限度とし、手洗いができる",
      "液温の限度はなく、手洗い可"
    ],
    correctIndex: 2,
  ),
];
