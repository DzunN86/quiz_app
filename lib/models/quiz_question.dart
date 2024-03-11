class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getSuffledAnswers() {
    final shuffledAnswers = List<String>.from(answers);
    shuffledAnswers.shuffle();
    return shuffledAnswers;
  }
}
