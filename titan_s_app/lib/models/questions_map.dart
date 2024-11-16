class QuestionsMap {
  const QuestionsMap(this.imageurl, this.text, this.answers);

  final String imageurl;
  final String text;
  final List<String> answers;

  List<String> shuffledAnswers() {
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
