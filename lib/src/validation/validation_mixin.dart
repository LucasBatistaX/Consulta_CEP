import 'package:consulta_cep/src/utils/app_sizes.dart';

mixin ValidationMixin {
  //Regra para validar o campo de input.
  String? validator(String value) {
    if (value.isEmpty) {
      return "Digite um CEP";
    } else if (value.length != AppSizes.si9) {
      return "Digite um CEP válido";
    }
    return null;
  }
}
