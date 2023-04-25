import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:themed_app/home/tips_list.dart';
import 'package:themed_app/settings/preferences_page.dart';
import '../theme/app_themes.dart';
import 'package:themed_app/theme/bloc/theme_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Temas'),
        actions: [
          IconButton(
            onPressed: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => PreferencesPage()),
            ),
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(3),
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