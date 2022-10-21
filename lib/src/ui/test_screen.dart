import 'package:first_project/src/cubits/count_cubit.dart';
import 'package:first_project/src/utils/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  @override
  Widget build(BuildContext context) {
    final bloc = BlocProvider.of<CountCubit>(context);
    return Scaffold(
      body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Row(),
            BlocBuilder<CountCubit, int>(
              bloc: bloc,
              builder: (BuildContext context, state) {
                print('rebuild');
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
                    InkWell(
                      onTap: () {
                        context.push(AppPages.nextTestScreen);
                      },
                      child: const Text('NextTestScreen'),
                    )
                  ],
                );
              },
            ),
          ])),
    );
  }
}
