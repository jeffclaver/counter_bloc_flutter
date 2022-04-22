import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:counter_app/counter_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter BloC',
      theme: ThemeData(
       primaryColor: Colors.redAccent
      ),
      
      home: BlocProvider<CounterBloc>(create: (context) => CounterBloc(), child:  const CounterPage(),),
    );
  }
}
