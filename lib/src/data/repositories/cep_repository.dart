import 'dart:convert';
import 'package:consulta_cep/src/data/models/cep_data_model.dart';
import 'package:http/http.dart' as http;

class CepRepository {


  Future<CepDataModel> getDataCep(String cep) async {
    
    //Consumindo a Api.
    var response = await http.get(Uri.parse("https://viacep.com.br/ws/$cep/json/"));

    //Tratando os dados e utilizando o model. 
    if(response.statusCode == 200) {
      var json = await jsonDecode(response.body);
      return CepDataModel.fromMap(json);
    } return CepDataModel(logradouro: '', bairro: '', cidade: '', estado: '');
  }
  
}