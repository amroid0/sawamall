import 'package:get_it/get_it.dart';
import 'package:sawamall/data/local/shared_prefs.dart';

GetIt locator = GetIt.instance;
Future setupLocator() async {
  SharedPreferencesManager sharedPreferencesManager = await SharedPreferencesManager.getInstance();
  locator.registerSingleton<SharedPreferencesManager>(sharedPreferencesManager);
}