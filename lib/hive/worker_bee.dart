import 'package:daily_horoscope/types/signs.dart';
import 'package:hive/hive.dart';

final String key = "cachedSign";

Future<Box<int>> getSignBox() async{
  return Hive.openBox<int>("Sign");
}

Future<int?> getCachedSign() async {
  Box<int> signBox = await getSignBox();
  return signBox.get(key, defaultValue: 1);
}

Future<void> saveSignToCache(Sign sign) async {
  //Note to self: Must save enums as array indexes since custom types cannot be written to disk via hive.
  Box<int> signBox = await getSignBox();
  signBox.put(key, sign.index);
}