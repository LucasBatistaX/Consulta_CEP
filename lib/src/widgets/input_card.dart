import 'package:consulta_cep/src/cubit/cep_cubit.dart';
import 'package:consulta_cep/src/utils/app_colors.dart';
import 'package:consulta_cep/src/utils/app_sizes.dart';
import 'package:consulta_cep/src/utils/app_text_styles.dart';
import 'package:consulta_cep/src/validation/validation_mixin.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InputCard extends StatefulWidget {
  const InputCard({super.key});

  @override
  State<InputCard> createState() => _InputCardState();
}

class _InputCardState extends State<InputCard> with ValidationMixin {

  //late final CepDataModel cep;
  late final CepCubit cubit;
  late final TextEditingController cepController;
  late final GlobalKey<FormState> formKey;

  @override
  void initState() {
    // inicializando a variavel para recuperar os dados do cubit.
    super.initState();
    cubit = BlocProvider.of<CepCubit>(context);
    cepController = TextEditingController();
    formKey = GlobalKey<FormState>();
  }

  void submite() {
    if(formKey.currentState!.validate()){
      cubit.buscarCep(cepController.text.replaceAll('-', ''));
    } 
  }

  void formatter(String value) {

    //Essa Linha ajusta retirando o traço.
    String newValue = value.replaceAll('-', '');

    //Condicional para ele auto completar o traço;
    if (newValue.length > AppSizes.si5) {
      newValue = '${newValue.substring(AppSizes.si0, AppSizes.si5)}-${newValue.substring(AppSizes.si5)}';
    }
    cepController.value = TextEditingValue(
      text: newValue,
      selection: TextSelection.collapsed(offset: newValue.length),
    );
  }


  @override
  void dispose() {
    cepController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: AppSizes.h358,
        minHeight: AppSizes.w184,
        maxWidth: AppSizes.h448,
        //maxHeight: AppSizes.w220,
      ),
      child: Card(
        elevation: AppSizes.s10,
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.s24),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                TextFormField(
                  validator: (value) => validator(value!),
                  inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                  onChanged: formatter,
                  maxLength: AppSizes.si9,
                  controller: cepController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    floatingLabelBehavior: FloatingLabelBehavior.never,
                    label: Text(
                      "Digite um CEP",
                      style: TextStyle(
                        color: AppColors.subtitle.withAlpha(AppSizes.s100),
                      ),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: AppSizes.s10,
                      horizontal: AppSizes.s10,
                    ),
                    suffixIcon: 
                    IconButton(onPressed: submite, icon: Icon(Icons.search)),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppSizes.s10),
                     borderSide: BorderSide(
                        color: AppColors.subtitle.withAlpha(AppSizes.s100),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(AppSizes.s10),
                      borderSide: BorderSide(color: AppColors.title),
                    ),
                  ),
                ),
                SizedBox(height: AppSizes.s16),
                SizedBox(
                  height: AppSizes.s48,
                  width: double.infinity,
                  child: TextButton(
                    style: TextButton.styleFrom(
                      backgroundColor: AppColors.title,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(AppSizes.s10),
                      ),
                    ),
                    onPressed: submite,
                    child: Text(
                      "Buscar endereço",
                      style: AppTextStyles.buttonTextStyle,
                    ),
                  ),
                ),
                SizedBox(height: AppSizes.s16),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
