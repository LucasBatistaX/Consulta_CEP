import 'package:consulta_cep/src/data/models/cep_data_model.dart';

//Estados possiveis.
sealed class CepState {}
//Sealed class - Verificar melhor.

final class CepInitial extends CepState {}
// final class
final class CepLoading extends CepState {}

final class CepLoaded extends CepState {
  final CepDataModel cep;

  CepLoaded(this.cep);
}

final class CepError extends CepState {
  final String message;

  CepError(this.message);
}
