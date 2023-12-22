import 'package:shared_preferences/shared_preferences.dart';
class CacheHelper{
    final SharedPreferences cache;
    final String _cachedCode = "cachedCode";

  CacheHelper({required this.cache});

    Future<bool> saveData(
        {required String key, required dynamic value}) async {
      if (value is bool) {
        return await cache.setBool(key, value);
      }

      if (value is String) {
        return await cache.setString(key, value);
      }
      if (value is int) {
        return await cache.setInt(key, value);
      }

      return false;
    }

    dynamic getData({required String key}) {
      return cache.get(key);
    }

    Future<bool> removeData({required String key}) async {
      return await cache.remove(key);
    }
    Future<bool> containsKey({required String key}) async {
      return  cache.containsKey(key);
    }

    //clear all data in the local data base
    Future<bool> clearData() async {
      return await cache.clear();
    }


    String getCachedLanguage() {
      final code = cache.getString(_cachedCode);
      if (code != null) {
        return code;
      } else {
        return 'ar';
      }
    }

    Future<void> cacheLanguage(String code) async {
      await cache.setString(_cachedCode, code);
    }

}