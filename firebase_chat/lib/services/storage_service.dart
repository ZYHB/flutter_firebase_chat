import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StorageService extends GetxService {
  /// 需要先Get.put,不然会报错
  static StorageService get to => Get.find();

  /// 内部插件单例初始化
  late final SharedPreferences _spInstance;

  Future<StorageService> init() async {
    _spInstance = await SharedPreferences.getInstance();
    return this;
  }

  Future<bool> setInt(String key, int value) async {
    return await _spInstance.setInt(key, value);
  }

  Future<bool> setDouble(String key, double value) async {
    return await _spInstance.setDouble(key, value);
  }

  Future<bool> setString(String key, String value) async {
    return await _spInstance.setString(key, value);
  }

  Future<bool> setBool(String key, bool value) async {
    return await _spInstance.setBool(key, value);
  }

  int getInt(String key) {
    return _spInstance.getInt(key) ?? 0;
  }

  double getDouble(String key) {
    return _spInstance.getDouble(key) ?? 0.0;
  }

  Future<bool> setStringList(String key, List<String> value) async {
    return await _spInstance.setStringList(key, value);
  }

  String getString(String key) {
    return _spInstance.getString(key) ?? '';
  }

  bool getBool(String key) {
    return _spInstance.getBool(key) ?? false;
  }

  List<String> getStringList(String key) {
    return _spInstance.getStringList(key) ?? [];
  }

  bool containsKey(String key) {
    return _spInstance.containsKey(key);
  }

  Future<bool> remove(String key) async {
    return await _spInstance.remove(key);
  }

  Future<bool> clear() async {
    return await _spInstance.clear();
  }
}
