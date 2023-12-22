import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:team_taskk/core/database/cache/cache_helper.dart';

late final GetIt sl;

Future<void> initializeServices() async {
  sl =  GetIt.instance;
  sl.registerSingletonAsync<SharedPreferences>(() => SharedPreferences.getInstance());
  await sl.isReady<SharedPreferences>();
  sl.registerSingleton<CacheHelper>(CacheHelper(cache: sl<SharedPreferences>()));

}
