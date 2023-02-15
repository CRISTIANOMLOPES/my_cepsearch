import 'dart:convert';

import 'package:http/http.dart' as http;

class BuscaCep {
  Future<Map<dynamic, dynamic>> retornaCep(String cep) async {
    var uri = Uri.parse("https://viacep.com.br/ws/$cep/json/");
    var retorno = await http.get(uri);
    var decodeResponse = jsonDecode(utf8.decode(retorno.bodyBytes));
    print(decodeResponse);
    print(retorno.body);
    return decodeResponse;
  }
}
