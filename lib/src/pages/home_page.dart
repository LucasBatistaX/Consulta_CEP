import 'package:consulta_cep/src/utils/app_sizes.dart';
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: AppSizes.s16),
        child: Center(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              mainAxisAlignment: .center,          
              children: [
                TitleInputCard(),
                SizedBox(height: AppSizes.s40,),
                InputCard(),
                SizedBox(height: AppSizes.s24,),
                Container(
                  constraints: BoxConstraints(
                    maxHeight: 272,
                    minHeight: 272,
                    maxWidth: 447,
                    minWidth: 447
                  ),
                  child: Card(
                    elevation: AppSizes.s10,
                    child: Padding(
                      padding: const EdgeInsets.all(24.0),
                      child: Column(
                        mainAxisAlignment: .center,
                        crossAxisAlignment: .start,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.location_on_outlined),
                              Text("Avenida Presidente Castelo Branco"),
                            ],
                          ),
                          Text("Jardim Zaira"),
                          Text("Mauá"),
                          Text("SP"),
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
    );
  }
}



