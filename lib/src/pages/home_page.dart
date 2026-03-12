import 'package:consulta_cep/src/utils/app_colors.dart';
import 'package:consulta_cep/src/utils/app_sizes.dart';
import 'package:consulta_cep/src/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.s16),
        child: Center(
          child: Column(
            mainAxisAlignment: .center,          
            children: [
              Text("Consulta CEP", style: AppTextStyles.titleHeader),
              Text("Encontre qualquer endereço brasileiro usando o CEP.", style: AppTextStyles.subTitleHeader),
              SizedBox(height: AppSizes.s40,),
              Container(
                constraints: BoxConstraints(
                  maxWidth: AppSizes.h448,
                  minWidth: AppSizes.h358,
                  maxHeight: AppSizes.w180
                ),
                child: Card(
                  elevation: AppSizes.s10,
                  child: Padding(
                    padding: const EdgeInsets.all(AppSizes.s24),
                    child: Column(
                      children: [
                        TextFormField(              
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
                            onPressed:(){}, child: Text("Buscar endereço", style: AppTextStyles.buttonTextStyle)
                          ),
                        )
                      ],
                    ),
                  )),
              )
            ],
          ),
        ),
      ),
    );
  }
}