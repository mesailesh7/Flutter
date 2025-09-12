void main() {
  print("hello world");

  var map_name = {'Key1': "SUnny", 'Key2': 2};
  var mapName = Map();

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
