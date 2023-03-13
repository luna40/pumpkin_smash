import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter/bloc/counter_bloc.dart';
import 'body/draft_page.dart';

class AppTwo extends StatelessWidget {
  const AppTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return DraftPage(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return GestureDetector(
                  onTap: () {
                    context.read<CounterBloc>().add(CounterIncrement());
                  },
                  child: Text(
                    state.counterValue.toString(),
                    style: Theme.of(context).textTheme.headlineMedium,
                  ),
                );
              },
            ),
            Row(
              children: [
                const SizedBox(
                  width: 100,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.black12,
                        width: 2,
                      ),
                      backgroundColor: Colors.lime,
                      shape: const CircleBorder()),
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterIncrement());
                  },
                  child: const SizedBox(),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.black12,
                        width: 2,
                      ),
                      backgroundColor: Colors.pink,
                      shape: const CircleBorder()),
                  onPressed: () {},
                  child: const SizedBox(),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(
                        color: Colors.black12,
                        width: 2,
                      ),
                      backgroundColor: Color.fromARGB(255, 141, 206, 238),
                      shape: const CircleBorder()),
                  onPressed: () {
                    context.read<CounterBloc>().add(CounterIncrement());
                  },
                  child: const SizedBox(),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
