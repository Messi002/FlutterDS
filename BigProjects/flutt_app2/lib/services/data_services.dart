import 'package:flut_app/Model/data_mode.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DataServices {
  String baseUrl = "http://mark.bslmeiyu.com/api";

  Future<List<DataModel>> getInfo() async {
    var apiUrl = '/getplaces';

    http.Response res = await http.get(Uri.parse(baseUrl + apiUrl));

    try {
      if (res.statusCode == 200) {
        List<dynamic> list = json.decode(res.body);
        return list.map((e) => DataModel.fromJson(e)).toList();
      } else {
        return <DataModel>[];
      }
    } catch (e) {
      print(e);
      return <DataModel>[];
    }
  }
}
