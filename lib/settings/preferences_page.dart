import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:themed_app/theme/bloc/theme_bloc.dart';

import '../theme/app_themes.dart';

class PreferencesPage extends StatelessWidget {
  PreferencesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Preferences"),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: Tema.values.length,
        itemBuilder: (context, index) {
          var _itemTema = Tema.values[index];
          return Card(
            color: TemaData[_itemTema]!.primaryColor,
            child: ListTile(
              title: Text(
                _itemTema.toString(),
                style: TemaData[_itemTema]!.textTheme.bodyMedium,
              ),
              onTap: () {
                BlocProvider.of<ThemeBloc>(context).add(
                  ThemeChangedEvent(theme: _itemTema),
                );
              },
            ),
          );
        },
      ),
    );
  }
}