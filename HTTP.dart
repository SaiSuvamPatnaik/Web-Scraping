import 'dart:io';
import 'package:html/parser.dart';
import 'package:http/http.dart' as http;

void main() async{
  var value = await http.get('https://www.w3schools.com/js/js_htmldom.asp');
  var ssp = value.body.toString();
  var document = parse(ssp);
  for (int i=0;i<ssp.length;i++){
    stdout.write(ssp[i]);

  }
  print("--------------------------------------------------------------------------------------------------------");
  print("--------------------------------------------------------------------------------------------------------");
  print("--------------------------------------------------------------------------------------------------------");
  for(int i=0;i<document.getElementsByTagName("li").length;i++){
    print(document.getElementsByTagName("li")[i].text);
  }

  print("--------------------------------------------------------------------------------------------------------");


}
//https://saisuvampatnaik.github.io/Sai-Suvam/
