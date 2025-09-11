import 'package:http/http.dart';

class Dictionary {
  final String term;
  final String meaning;

  Dictionary({required this.term, required this.meaning});

  factory DictionaryEntry.create(Map<String, dynamic> jsonMap) {
    String term = jsonMap['word'];
    String meaning = jsonMap['meaning']
  }
}
