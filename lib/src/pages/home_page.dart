import 'package:consulta_cep/src/utils/app_sizes.dart';
import 'package:consulta_cep/src/widgets/input_card.dart';
import 'package:consulta_cep/src/widgets/response_card.dart';
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
                  ResponseCard()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}





