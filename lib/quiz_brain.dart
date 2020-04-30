import 'question.dart';

class QuizBrain {

  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Mexico is south of the Equator.', false),
    Question('New Zealand has more sheep than people.',true),
    Question('China only has one time zone.', true),
    Question('Paris is further north than Toronto.', true),
    Question('Africa has a larger area than Russia.', true),
    Question('Russia borders both North Korea and Norway.', true),
    Question(
        'Switzerland is part of the European Union.',
        false),
    Question(
        'Besides Italy, there are no countries where Italian is an official language.',
        false),
    Question(
        'Ethiopia is landlocked.',
        true),
    Question(
        'The Prime Meridian passes through London.',
        true),
    Question('Florida is the southernmost state in the U.S..', false),
    Question(
        'Belgium borders exactly two other countries.',
        false),
    Question(
        'No countries share a land border with the United Kingdom.',
        false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {

      print('Now returning true');
      return true;

    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}


