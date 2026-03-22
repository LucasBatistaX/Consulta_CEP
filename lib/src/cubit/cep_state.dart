import 'package:consulta_cep/src/data/models/cep_data_model.dart';

//Estados possiveis.
abstract class CepState {}

class CepInitial extends CepState {}

class CepLoading extends CepState {}

class CepLoaded extends CepState {
  final CepDataModel cep;

  CepLoaded(this.cep);
}

class CepError extends CepState {
  final String message;

  CepError(this.message);
}
