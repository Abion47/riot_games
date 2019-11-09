import 'dart:convert';
// import 'dart:io';

// dynamic fixture(String name) => json.decode(fixtureString(name));
// String fixtureString(String name) =>
//     File('${_getFixtureFolder()}/$name.json').readAsStringSync();

// String _getFixtureFolder() {
//   var current = Directory.current;

//   if (current.path.endsWith('test')) {
//     return '${current.path.replaceAll('\\', '/')}/fixtures';
//   }

//   final testDir = Directory('${current.path}/test');
//   if (testDir.existsSync()) {
//     return '${testDir.path.replaceAll('\\', '/')}/fixtures';
//   }

//   while (!current.path.endsWith('test')) {
//     if (current.parent == null)
//       throw Exception(
//           'Script must be run within the `test` folder as an ancestor.');
//     current = current.parent;
//   }

//   return '${current.path.replaceAll('\\', '/')}/fixtures';
// }

String dataToJson(dynamic obj) => json.encode(obj);
