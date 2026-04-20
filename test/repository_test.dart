import 'dart:convert';

import 'package:consulta_cep/src/data/models/cep_data_model.dart';
import 'package:consulta_cep/src/data/repositories/cep_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart';
import 'package:mocktail/mocktail.dart';


class ClientMock extends Mock implements Client{}

void main() {
  late ClientMock client; 
  late CepRepository repository; 


    setUpAll((){
      client = ClientMock();
      repository = CepRepository(client);
    });

    tearDownAll((){
      client;
      repository;
    });

  
  test("Deve retornar um CepDataModel Quando a requisição for sucesso", () async {

    //nesta linha eu estou controlando a requisição e a resposta;
    when(() => client.get(Uri.parse('https://viacep.com.br/ws/09310310/json/'))).thenAnswer((_)async => Response(jsonEncode(jsonReturn), 200));

    //Requisição fake;
    final CepDataModel cep = await repository.getDataCep("09310310");

      //case de testes. (Se está vazio o retorno);
      expect(cep.bairro.isNotEmpty, equals(true));
      expect(cep.cidade.isNotEmpty, equals(true));
      expect(cep.estado.isNotEmpty, equals(true));
      expect(cep.logradouro.isNotEmpty, equals(true));
      
      // Aqui estou verificando se a chamada foi feita adequadamente, e se foi chamada apenas 1 vez;
      verify(() => client.get(Uri.parse('https://viacep.com.br/ws/09310310/json/'))).called(1);

      
  });

}

const jsonReturn = {
  "cep": "09310-310",
  "logradouro": "Rua Carlos de Laet",
  "complemento": "",
  "unidade": "",
  "bairro": "Vila Guarani",
  "localidade": "Mauá",
  "uf": "SP",
  "estado": "São Paulo",
  "regiao": "Sudeste",
  "ibge": "3529401",
  "gia": "4420",
  "ddd": "11",
  "siafi": "6689"
};
