import 'package:consulta_cep/src/utils/app_colors.dart';
import 'package:consulta_cep/src/utils/app_sizes.dart';
import 'package:flutter/material.dart';

class AppTextStyles {
  
  static const TextStyle titleHeader = TextStyle(color: AppColors.title, fontSize: AppSizes.s36, fontWeight:FontWeight.w900);
  static const TextStyle subTitleHeader = TextStyle(color: AppColors.subtitle, fontSize: AppSizes.s14, fontWeight:FontWeight.w400);
  static const TextStyle titleResponse = TextStyle(color: AppColors.subtitle, fontSize: AppSizes.s12, fontWeight:FontWeight.w400);
  static const TextStyle subTitleResponse = TextStyle(color: AppColors.title, fontSize:AppSizes.s18, fontWeight: FontWeight.bold);
  static const TextStyle buttonTextStyle = TextStyle(color: AppColors.textButton,fontSize: AppSizes.s16, fontWeight: FontWeight.w500);



}