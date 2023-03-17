import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';

import '../counter/bloc/counter_bloc.dart';
import 'GameOver.dart';
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
            const Text(
              'Start smashing !',
              style: TextStyle(
                  color: Colors.deepOrangeAccent,
                  fontSize: 35,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                color: Theme.of(context).primaryColorLight,
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Row(
                    children: [
                      const Text(
                        'Total Score:  ',
                        style: TextStyle(
                            color: Colors.deepOrangeAccent,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                      ),
                      BlocBuilder<CounterBloc, CounterState>(
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: () {
                              context
                                  .read<CounterBloc>()
                                  .add(CounterIncrement());
                            },
                            child: Text(
                              state.counterValue.toString(),
                              style: Theme.of(context).textTheme.headlineMedium,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.black12,
                          width: 2,
                        ),
                        backgroundColor: Colors.lime..withOpacity(0.5),
                        shape: const CircleBorder()),
                    onPressed: () {
                      context.read<CounterBloc>().add(CounterIncrement());
                    },
                    child: SizedBox(
                      height: 90,
                      child: Lottie.network(
                        'https://assets7.lottiefiles.com/packages/lf20_Wo9uEx8Vh6.json',
                        repeat: true,
                        reverse: true,
                        animate: true,
                      ),
                    ),
                  ),
                  Opacity(
                    opacity: 0.5,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          side: const BorderSide(
                            color: Colors.black12,
                            width: 2,
                          ),
                          shape: const CircleBorder()),
                      onPressed: () {},
                      child: SizedBox(
                        height: 90,
                        child: Lottie.network(
                          'https://assets7.lottiefiles.com/packages/lf20_Wo9uEx8Vh6.json',
                          repeat: true,
                          reverse: true,
                          animate: false,
                        ),
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        side: const BorderSide(
                          color: Colors.black12,
                          width: 2,
                        ),
                        backgroundColor: Color.fromARGB(96, 83, 8, 223),
                        shape: const CircleBorder()),
                    onPressed: () {
                      context.read<CounterBloc>().add(CounterIncrement());
                    },
                    child: SizedBox(
                      height: 90,
                      child: Lottie.network(
                        'https://assets7.lottiefiles.com/packages/lf20_Wo9uEx8Vh6.json',
                        repeat: true,
                        reverse: false,
                        animate: true,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50, //height of button
              width: 250,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(shape: const StadiumBorder()),
                onPressed: () {
                  Navigator.pop<dynamic>(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StartGame(),
                    ),
                  );
                },
                child: const Text('Level 2'),
              ),
            ),
            const SizedBox(
              height: 8,
            )
          ],
        ),
      ),
    );
  }
}
