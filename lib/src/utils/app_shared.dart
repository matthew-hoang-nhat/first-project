import 'dart:async';
import 'package:hive/hive.dart';

class AppShared {
  final Box<dynamic> _box;
  AppShared(this._box);
  static const String keyName = 'golden_owl_demo';
  static const String keyBox = '${keyName}_shared';
  static const String keyTokenValue = "TOKEN";
  static const String keyLogin = 'LOGIN';
  // Future<void> setTokenValue(String value) => _box.put(keyTokenValue, value);
  // String? getTokenValue() => _box.get(keyTokenValue);
  Future<void> setLoginValue(bool value) => _box.put(keyLogin, value);
  bool getLoginValue() => _box.get(keyLogin) ?? false;
  Future<int> clear() => _box.clear();
}
