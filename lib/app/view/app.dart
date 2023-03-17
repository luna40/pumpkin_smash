import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pumpkin_smash/counter/bloc/counter_bloc.dart';
import 'package:pumpkin_smash/counter/counter.dart';
import 'package:pumpkin_smash/l10n/l10n.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
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
        debugShowCheckedModeBanner: false,
        theme: FlexThemeData.light(scheme: FlexScheme.gold),
        // The Mandy red, dark theme.
        darkTheme: FlexThemeData.dark(
          scheme: FlexScheme.gold,
        ),
        // Use dark or light theme based on system setting.
        themeMode: ThemeMode.dark,
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        home: const StartGame(),
      ),
    );
  }
}
