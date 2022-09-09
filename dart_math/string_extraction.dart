import 'dart:collection';

bool _isNumeric(String? s) {
  if(s == null) {
    return false;
  }
  return int.tryParse(s) != null;
}

List<int> extractNumbersFromString(String text) {
    List<int> numbers = [];

    text.split(" ").forEach((word) {
      if (_isNumeric(word)) numbers.add(int.parse(word));
    });

    return numbers;
}

Map<String, int> countWords(String text) {
    Map<String, int> wordsMap = {};

    text.split(" ").forEach((word) {
      if (wordsMap.containsKey(word)) wordsMap.update(word, (value) => ++value);
      else wordsMap[word] = 1;
    });

    return Map.fromEntries(wordsMap.entries.toList()..sort((w1, w2) => w2.value.compareTo(w1.value)));
}

List<num> countNumberedWords(String text) {
    Map<String, num> allowedWords = {
      "zero": 0, 
      "one": 1, 
      "two": 2,
      "three": 3,
      "four": 4,
      "five": 5,
      "six": 6,
      "seven": 7,
      "eight": 8,
      "nine": 9
      };
    List<num> numbersList = [];

    text.split(", ").forEach((word) {
      if (allowedWords.containsKey(word) && !numbersList.contains(allowedWords[word])) {
        numbersList.add(allowedWords[word]!);
      }
    });

    return numbersList;
}