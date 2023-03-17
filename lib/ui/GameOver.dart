import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import '../counter/bloc/counter_bloc.dart';
import 'body/draft_page.dart';
import 'second_page.dart';

class StartGame extends StatelessWidget {
  const StartGame({super.key});

  @override
  Widget build(BuildContext context) {
    return DraftPage(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                const Text(
                  'Game Over !',
                  style: TextStyle(
                      color: Colors.amberAccent,
                      fontSize: 35,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 120,
                  child: Lottie.network(
                    'https://assets6.lottiefiles.com/packages/lf20_fd83HLtqZt.json',
                    repeat: true,
                    reverse: true,
                    animate: true,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(12),
              child: Card(
                color: Theme.of(context).primaryColorLight,
                child: Padding(
                  padding: const EdgeInsets.all(18),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 18,
                      ),
                      Row(
                        children: [
                          Text(
                            'High score is: ',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          BlocBuilder<CounterBloc, CounterState>(
                            builder: (context, state) {
                              return Text(
                                state.counterValue.toString(),
                                style:
                                    Theme.of(context).textTheme.headlineSmall,
                              );
                            },
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: [
                          Text(
                            'New score is: ',
                            style: Theme.of(context).textTheme.headlineMedium,
                          ),
                          BlocBuilder<CounterBloc, CounterState>(
                            builder: (context, state) {
                              return Text(
                                state.counterValue.toString(),
                                style:
                                    Theme.of(context).textTheme.headlineMedium,
                              );
                            },
                          ),
                        ],
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            shape: const StadiumBorder()),
                        onPressed: () {
                          Navigator.push<dynamic>(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AppTwo(),
                            ),
                          );
                        },
                        child: const Text('New game'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 200,
              child: Lottie.network(
                'https://assets8.lottiefiles.com/packages/lf20_pWTOxQsYjN.json',
                repeat: true,
                reverse: false,
                animate: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
