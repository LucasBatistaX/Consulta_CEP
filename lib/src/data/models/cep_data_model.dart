class CepDataModel {
  //Atributos
  String logradouro;
  String bairro;
  String cidade;
  String estado;

  //getters

  CepDataModel({
    required this.logradouro,
    required this.bairro,
    required this.cidade,
    required this.estado,
  });

  factory CepDataModel.fromMap(Map<String, dynamic> map) {
    return CepDataModel(
      logradouro: map['logradouro'] ?? '',
      bairro: map['bairro'] ?? '',
      cidade: map['localidade'] ?? '',
      estado: map['estado'] ?? '',
    );
  }
}
