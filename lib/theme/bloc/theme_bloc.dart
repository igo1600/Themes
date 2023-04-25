import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import '../app_themes.dart';

part 'theme_event.dart';
part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {
  ThemeBloc()
      : super(ThemeState(themeData: TemaData[Tema.GreenLight]!)) {
    on<ThemeChangedEvent>(
      (event, emit) {
        emit(ThemeState(themeData: TemaData[event.theme]!));
      },
    );
  }
}
