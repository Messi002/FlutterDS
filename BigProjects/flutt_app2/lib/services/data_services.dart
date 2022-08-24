import 'package:http/http.dart' as http;
import 'dart:convert';


class DataServices {
  String baseUrl = "http://mark.bslmeiyu.com/api";

  getInfo() async{
    var apiUrl = '/getplaces';

 return  http.Response res = await http.get(Uri.parse(baseUrl + apiUrl));

 try{
  if(res.statusCode == 200){

    List<dynamic> list = json.decode(res.body);
  }


 }catch(e){
  print(e)
 }
  }
}
