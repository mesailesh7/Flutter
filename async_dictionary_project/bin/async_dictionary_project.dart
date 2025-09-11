import 'package:async_dictionary_project/async_dictionary_project.dart'
    as async_dictionary_project;

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class DictionaryEntry {
  final String term;
  final String meaning;

  DictionaryEntry({required this.term, required this.meaning});

  factory DictionaryEntry.create(Map<String, dynamic> jsonMap) {
    String term = jsonMap['word'];
    String meaning = jsonMap['meanings'][0]['definitions'][0]['definition'];

    return DictionaryEntry(term: term, meaning: meaning);
  }
}

Future<void> main() async {
  print("--------------Simple Dictionary App-------------- ");

  bool keepRunning = true;

  while (keepRunning) {
    stdout.write("\n Type a word to define ( or type 'exit' to quit):");
    String? userWord = stdin.readLineSync();

    if (userWord == null || userWord.toLowerCase() == "exit") {
      print('Session Closed');
      keepRunning = false;
      continue;
    }

    String requestUrl =
        "https://api.dictionaryapi.dev/api/v2/entries/en/$userWord";

    try {
      var reply = await http.get(Uri.parse(requestUrl));

      if (reply.statusCode == 200) {
        var parsed = jsonDecode(reply.body) as List<dynamic>;
        var entry = DictionaryEntry.create(parsed[0]);

        print("\n Word Definition");
        print("---------------------");
        print("${entry.term.padRight(15)} ${entry.meaning}");
      } else {
        print("No result found: , $userWord");
      }
    } catch (problem) {
      print("Error occured: $problem");
    }
  }
}
