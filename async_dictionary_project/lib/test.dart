import 'package:http/http.dart';

class Dictionary {
  final String term;
  final String meaning;

  Dictionary({required this.term, required this.meaning});

  factory Dictionary.create(Map<String, dynamic> jsonMap) {
    String term = jsonMap['word'];
    String meaning = jsonMap['meanings'][0]['definations'][0]['definition'];
  }
}
