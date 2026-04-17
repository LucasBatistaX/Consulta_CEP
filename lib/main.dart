import 'package:consulta_cep/src/cubit/cep_cubit.dart';
import 'package:consulta_cep/src/data/repositories/cep_repository.dart';
import 'package:consulta_cep/src/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(_) => CepCubit(CepRepository(Client())),
      child: MaterialApp(
        title: 'Consulta CEP',
        debugShowCheckedModeBanner: false,
        home: const HomePage(),
      ),
    );
  }
}


