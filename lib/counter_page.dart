import 'package:counter_app/bloc/counter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({Key? key}) : super(key: key);

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  @override
  Widget build(BuildContext context) {
    final CounterBloc counterBloc = BlocProvider.of<CounterBloc>(context);
    return Scaffold(
        appBar: AppBar(
          title: const Text("Contador"),
          centerTitle: true,
        ),
        body:
            BlocBuilder<CounterBloc, CounterInitial>(builder: (context, state) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Counter",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 24.0,
                  ),
                ),
                Text(
                  state.counter.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 32.0,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            counterBloc.add(DecreaseEvent());
                          },
                          child: const Text(
                            "-1",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16.0,
                            ),
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButton(
                          onPressed: () {
                            counterBloc.add(AddEvent());
                          },
                          child: const Text(
                            "+1",
                            style: TextStyle(
                              fontWeight: FontWeight.w300,
                              fontSize: 16.0,
                            ),
                          )),
                    )
                  ],
                )
              ],
            ),
          );
        }));
  }
}
