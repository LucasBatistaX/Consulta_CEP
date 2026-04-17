import 'package:consulta_cep/src/cubit/cep_cubit.dart';
import 'package:consulta_cep/src/cubit/cep_state.dart';
import 'package:consulta_cep/src/utils/app_colors.dart';
import 'package:consulta_cep/src/utils/app_sizes.dart';
import 'package:consulta_cep/src/utils/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ResponseCard extends StatefulWidget {
  const ResponseCard({super.key});

  @override
  State<ResponseCard> createState() => _ResponseCardState();
}

class _ResponseCardState extends State<ResponseCard> {

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CepCubit, CepState>(
      builder: (context, state) {
        return switch (state){

          CepInitial() => const SizedBox.shrink(),

          CepLoading() => CircularProgressIndicator(color: AppColors.title,),

          CepLoaded(cep: var model) => Column(
            children: [
              Container(
                constraints: BoxConstraints(
                  maxHeight: AppSizes.h300,
                  minHeight: AppSizes.h272,
                  maxWidth: AppSizes.w447,
                  minWidth: AppSizes.w447,
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
                            Icon(
                              Icons.location_on_outlined,
                              color: AppColors.subtitle,
                            ),
                            SizedBox(width: AppSizes.s10),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: .start,
                                children: [
                                  Text(
                                    "LOGRADOURO:",
                                    style: AppTextStyles.titleResponse,
                                  ),
                                  Text(
                                    model.logradouro,
                                    style: AppTextStyles.subTitleResponse,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.s12),
                        Row(
                          children: [
                            Icon(
                              Icons.holiday_village_outlined,
                              color: AppColors.subtitle,
                            ),
                            SizedBox(width: AppSizes.s10),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: .start,
                                children: [
                                  Text(
                                    "BAIRRO:",
                                    style: AppTextStyles.titleResponse,
                                  ),
                                  Text(
                                    model.bairro,
                                    style: AppTextStyles.subTitleResponse,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.s12),
                        Row(
                          children: [
                            Icon(
                              Icons.location_city_rounded,
                              color: AppColors.subtitle,
                            ),
                            SizedBox(width: AppSizes.s10),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: .start,
                                children: [
                                  Text(
                                    "CIDADE:",
                                    style: AppTextStyles.titleResponse,
                                  ),
                                  Text(
                                    model.cidade,
                                    style: AppTextStyles.subTitleResponse,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppSizes.s12),
                        Row(
                          children: [
                            Icon(Icons.map_outlined, color: AppColors.subtitle),
                            SizedBox(width: AppSizes.s10),
                            Flexible(
                              child: Column(
                                crossAxisAlignment: .start,
                                children: [
                                  Text(
                                    "ESTADO:",
                                    style: AppTextStyles.titleResponse,
                                  ),
                                  Text(
                                    model.estado,
                                    style: AppTextStyles.subTitleResponse,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),

          CepError(message: String error) => Center(
            child: Text(error),
          ),
        };
      },
    );
  }
}
