import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../counter/bloc/counter_bloc.dart';
import 'body/draft_page.dart';
import 'second_page.dart';

class StartGame extends StatelessWidget {
  const StartGame({super.key});

  @override
  Widget build(BuildContext context) {
    return DraftPage(
      backgroundColor: Colors.pink,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  state.counterValue.toString(),
                  style: Theme.of(context).textTheme.headlineMedium,
                );
              },
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.pink, shape: const StadiumBorder()),
              onPressed: () {
                Navigator.push<dynamic>(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const AppTwo(),
                  ),
                );
              },
              child: const Text('Whatever'),
            ),
          ],
        ),
      ),
    );
  }
}
