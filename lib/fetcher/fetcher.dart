import 'dart:convert';

import 'package:daily_horoscope/types/horoscope_types.dart';
import 'package:daily_horoscope/types/signs.dart';
import 'package:http/http.dart';

Future<DisplayDTO> fetchData(Sign sign, HoroscopeType horoscopeType) async {
  final response = await get(Uri.parse("https://horoscope-app-api.vercel.app/api/v1/get-horoscope/${horoscopeType.name}?sign=${sign.name}&day=TODAY"));

  if(response.statusCode == 200){
    final responseBody = jsonDecode(response.body) as Map<String, dynamic>;
    final responseData = responseBody["data"] as Map<String, dynamic>;
    return DisplayDTO.FromJson(horoscopeType, responseData);
  }
  else{
    throw Exception(response.statusCode);
  }
}