import 'package:bloc/bloc.dart';
import 'package:consulta_cep/src/cubit/cep_state.dart';
import 'package:consulta_cep/src/data/models/cep_data_model.dart';
import 'package:consulta_cep/src/data/repositories/cep_repository.dart';

//Orquestra
class CepCubit extends Cubit<CepState> {
   
  // recupera os dados do repository para utilizar a regra de negocio
  final CepRepository repository;

  CepCubit(this.repository) : super(CepInitial());



  Future buscarCep(String cep) async {
    emit(CepLoading());
    try {
      CepDataModel result = await repository.getDataCep(cep);
      emit(CepLoaded(result));
    } catch (e) {
      emit(CepError('Dados de endereço do CEP informado não encontrado.'));
    }
  }
}
