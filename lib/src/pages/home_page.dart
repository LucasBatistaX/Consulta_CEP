import 'package:consulta_cep/src/utils/app_colors.dart';
import 'package:consulta_cep/src/utils/app_sizes.dart';
import 'package:consulta_cep/src/utils/app_text_styles.dart';
import 'package:consulta_cep/src/widgets/input_card.dart';
import 'package:flutter/material.dart';
import 'package:consulta_cep/src/widgets/title_input_card.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSizes.s16),
            child: Center(
              child: Column(
                mainAxisAlignment: .center,          
                children: [
                  TitleInputCard(),
                  SizedBox(height: AppSizes.s40,),
                  InputCard(),
                  SizedBox(height: AppSizes.s24,),
                  Container(
                    constraints: BoxConstraints(
                      maxHeight: AppSizes.h290,
                      minHeight: AppSizes.h272,
                      maxWidth: AppSizes.w447,
                      minWidth: AppSizes.w447
                    ),
                    child: Card(
                      elevation: AppSizes.s10,
                      child: Padding(
                        padding: const EdgeInsets.all(AppSizes.s24),
                        child: Column(
                          mainAxisAlignment: .center,
                          crossAxisAlignment: .start,
                          children: [
                            Row(
                              children: [
                                Icon(Icons.location_on_outlined, color: AppColors.subtitle,),
                                SizedBox(width: AppSizes.s10,),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment: .start,
                                    children: [
                                      Text("LOGRADOURO:", style: AppTextStyles.titleResponse,),
                                      Text("Avenida Presidente Castelo Branco", style:AppTextStyles.subTitleResponse,),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: AppSizes.s12,),
                            Row(
                              children: [
                                Icon(Icons.holiday_village_outlined, color: AppColors.subtitle,),
                                SizedBox(width: AppSizes.s10,),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment: .start,
                                    children: [
                                      Text("BAIRRO:", style: AppTextStyles.titleResponse,),
                                      Text("Jardim Zaira", style: AppTextStyles.subTitleResponse,),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: AppSizes.s12,),
                            Row(
                              children: [
                                Icon(Icons.location_city_rounded, color: AppColors.subtitle,),
                                SizedBox(width: AppSizes.s10,),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment: .start,
                                    children: [
                                      Text("CIDADE:", style: AppTextStyles.titleResponse,),
                                      Text("Mauá", style: AppTextStyles.subTitleResponse,),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: AppSizes.s12,),
                            Row(
                              children: [
                                Icon(Icons.map_outlined, color: AppColors.subtitle,),
                                SizedBox(width: AppSizes.s10,),
                                Flexible(
                                  child: Column(
                                    crossAxisAlignment: .start,
                                    children: [
                                      Text("ESTADO:", style: AppTextStyles.titleResponse,),
                                      Text("SP", style: AppTextStyles.subTitleResponse),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}



