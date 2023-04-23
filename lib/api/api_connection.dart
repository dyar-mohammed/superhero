import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:superhero/api/api_constant.dart';
import 'package:superhero/models/search_character/heroinfo.dart';

void main(List<String> args) async {
  var data = await getHeroes('batman');

  print(data[0].name);
}

Future<List<HeroInfo>> getHeroes(String search) async {
  var url = Uri.parse(
      ApiConstant.baseUrl + ApiConstant.accessToken + '/search/$search');
  var response = await http.get(url);
  if (response.statusCode == 200) {
    var jsonData = jsonDecode(response.body);
    var data = jsonData['results'];
    List<HeroInfo> result = [];
    for (var item in data) {
      HeroInfo searchCharacter = HeroInfo.fromJson(item);
      result.add(searchCharacter);
    }
    return result;
  } else {
    throw Exception('no response');
  }
}

Future<List<HeroInfo>> getAllHeroes({int limit = 100}) async {
  List<HeroInfo> result = [];
  //nardni 10 request chwnka hich endpointeky nya bo garandnaway komalek hero ba yakawa
  for (int i = 1; i <= limit; i++) {
    print('loaded: $i');
    var url = Uri.parse('${ApiConstant.baseUrl}${ApiConstant.accessToken}/$i');
    var response = await http.get(url);
    if (response.statusCode == 200) {
      result.add(HeroInfo.fromJson(jsonDecode(response.body)));
    }
  }
  return result;
}
