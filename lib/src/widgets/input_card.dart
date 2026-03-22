import 'package:consulta_cep/src/cubit/cep_cubit.dart';
import 'package:consulta_cep/src/utils/app_colors.dart';
import 'package:consulta_cep/src/utils/app_sizes.dart';
import 'package:consulta_cep/src/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class InputCard extends StatefulWidget {
  const InputCard({
    super.key,
  });
    
  @override
  State<InputCard> createState() => _InputCardState();
}

class _InputCardState extends State<InputCard> {

  //late final CepDataModel cep;  
  late final CepCubit cubit;
  late final TextEditingController cepController;

@override
void initState(){
  // inicializando a variavel para recuperar os dados do cubit.
  super.initState();
  cubit = BlocProvider.of<CepCubit>(context);
  cepController = TextEditingController();
  
}

void submite(){
    cubit.buscarCep(cepController.text);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: AppSizes.h448,
        minWidth: AppSizes.h358,
        maxHeight: AppSizes.w184
      ),
      child: Card(
        elevation: AppSizes.s10,
        child: Padding(
          padding: const EdgeInsets.all(AppSizes.s24),
          child: Column(
            children: [
              TextFormField(   
                onChanged: (value) {
                  debugPrint(value);
                }, 
                controller: cepController,          
                decoration: InputDecoration(
                  floatingLabelBehavior: FloatingLabelBehavior.never,
                  label: Text("Digite um CEP", style: TextStyle(color: AppColors.subtitle.withAlpha(AppSizes.s100)),),
                  contentPadding: EdgeInsets.symmetric(vertical: AppSizes.s10, horizontal: AppSizes.s10),
                  suffixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSizes.s10),
                  borderSide: BorderSide(color: AppColors.subtitle.withAlpha(AppSizes.s100))
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(AppSizes.s10),
                  borderSide: BorderSide(color: AppColors.title)
                )
                ),
                
              ),
              SizedBox(height: AppSizes.s16,),
              SizedBox(
                height: AppSizes.s48,
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: AppColors.title,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(AppSizes.s10)
                    )
                  ),
                  onPressed:(){
                   //debugPrint(cepController.text);
                    submite();
                  },
                  child: Text("Buscar endereço", style: AppTextStyles.buttonTextStyle)
                ),
              ),
              SizedBox(height: AppSizes.s16,),
            ],
          ),
        )),
    );
  }
}