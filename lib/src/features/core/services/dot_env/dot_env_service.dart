import 'dart:io';

class DotEnvService {
  final Map<String, String> _map = {};
  static DotEnvService instance = DotEnvService._();

  DotEnvService._() {
    _init();
  }

  void _init() {
    final file = File('.env');
    final envText = file.readAsStringSync();

    for (var element in envText.split('\n')) {
      final keyValue = element.split('=');
      _map[keyValue[0]] = keyValue[1];
    }
  }

  String? operator [](String key) {
    return _map[key]!;
  }
}
