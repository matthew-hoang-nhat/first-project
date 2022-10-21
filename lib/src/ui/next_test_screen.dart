import 'package:first_project/src/cubits/count_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NextTestScreen extends StatefulWidget {
  const NextTestScreen({super.key});

  @override
  State<NextTestScreen> createState() => _NextTestScreenState();
}

class _NextTestScreenState extends State<NextTestScreen> {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<CountCubit>(context);
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          BlocBuilder<CountCubit, int>(
              bloc: bloc,
              builder: (context, state) {
                return Column(
                  children: [
                    Text(
                      state.toString(),
                      style: const TextStyle(fontSize: 50),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                            onPressed: () {
                              bloc.decrement();
                            },
                            child: const Text('-')),
                        const SizedBox(
                          width: 20,
                        ),
                        ElevatedButton(
                            onPressed: () {
                              bloc.increment();
                            },
                            child: const Text('+')),
                      ],
                    ),
                  ],
                );
              })
        ],
      )),
    );
  }
}
