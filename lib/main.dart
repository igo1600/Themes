import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themed_app/home/home_page.dart';
import 'package:themed_app/theme/bloc/theme_bloc.dart';

void main() {
  runApp(BlocProvider(
    create: (context) => ThemeBloc(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeState>(
      builder: (context, state) {
        return MaterialApp(
          title: 'Change Themes App',
          theme: state.themeData,
          home: HomePage(),
        );
      },
    );
  }
}
