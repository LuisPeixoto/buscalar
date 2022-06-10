import 'dart:io';

import 'package:path_provider/path_provider.dart' as path_provider;

Future<String> get getDirectoryPath async {
  final directory = await path_provider.getApplicationDocumentsDirectory();
  return directory.path;
}
