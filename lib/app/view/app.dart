import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pumpkin_smash/counter/bloc/counter_bloc.dart';
import 'package:pumpkin_smash/counter/counter.dart';
import 'package:pumpkin_smash/l10n/l10n.dart';

import '../../ui/start.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<CounterBloc>(
          create: (context) => CounterBloc(),
        )
      ],
      child: MaterialApp(
        theme: ThemeData(
          appBarTheme:
              const AppBarTheme(color: Color.fromARGB(255, 255, 192, 19)),
          colorScheme: ColorScheme.fromSwatch(
            accentColor: Color.fromARGB(255, 255, 192, 19),
          ),
        ),
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const StartGame(),
      ),
    );
  }
}
