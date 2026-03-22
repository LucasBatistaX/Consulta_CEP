import 'package:consulta_cep/src/utils/app_text_styles.dart';
import 'package:flutter/material.dart';

class TitleInputCard extends StatelessWidget {
  const TitleInputCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Consulta CEP", style: AppTextStyles.titleHeader),
        Text("Encontre qualquer endereço brasileiro usando o CEP.", style: AppTextStyles.subTitleHeader),
      ],
    );
  }
}