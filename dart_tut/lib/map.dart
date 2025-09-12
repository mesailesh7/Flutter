void main() {
  print("hello world");

  var mapName = {'Key1': "SUnny", 'Key2': 2};
  var mapName = {};

  mapName['Name'] = "Mahima";
  mapName['age'] = 32;
  mapName['CanLocateToOffice'] = true;

  print(mapName.isEmpty);
  print(mapName.isNotEmpty);
  print(mapName.length);
  print(mapName.keys);
  print(mapName.values);
  print(mapName.containsKey('Name'));
  print(mapName.containsValue('Mahima'));
  print(mapName.remove('CanLocateToOffice'));
  print(mapName);
}
