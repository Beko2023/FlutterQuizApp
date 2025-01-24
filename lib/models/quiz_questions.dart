class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  //returns a shuffled list that is copied without altering original data
  List<String> getShuffledAnswers() {
    final shuffledList = List.of(answers); //copies list from answers
    shuffledList.shuffle(); //shuffles copied list
    return shuffledList;
  }
}
