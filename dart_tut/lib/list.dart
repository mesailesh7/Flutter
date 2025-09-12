main() {
  var listName = [10, 20, 30, 40];
  listName.add(50);

  var names = [];
  names.add("Sunny");
  names.add("Sangam");
  names.add("Mahima");
  // names.addAll(listName);

  // names.replaceRange(1, 3, )
  // names.remove()

  names.insert(2, 100);
  names.insertAll(3, listName);

  print(listName);
  print(names);

  print("lengh: ${names.length}");
  print("Reversed: ${names.reversed}");
  print("first: ${names.first}");
  print("last: ${names.last}");
  print("Is Empty: ${names.isEmpty}");
  print("Is not emtpy: ${names.isNotEmpty}");
  print("Element at list names at index 2: ${listName.elementAt(2)}");
}
