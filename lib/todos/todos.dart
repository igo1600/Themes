import 'package:flutter/material.dart';

class Todos extends StatelessWidget {
  const Todos({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.only(left: 8.0, right: 8.0, top: 8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Tareas",
                style: Theme.of(context).textTheme.displayMedium,
              ),
              Card(
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Wrap(
                    spacing: 12,
                    children: [
                      Icon(Icons.lightbulb),
                      Text(
                        "During the winter your plants slow down and need less water",
                      )
                    ],
                  ),
                ),
              ),
              // Lista de todos
              // Expanded(child: Card(child: ),)
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {},
        ),
      ),
    );
  }
}