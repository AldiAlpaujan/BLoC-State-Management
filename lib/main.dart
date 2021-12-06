import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_bloc_package/color_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<ColorBLoC>(
        builder: (context) => ColorBLoC(),
        child: const MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.amber,
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.lightBlue,
          )
        ],
      ),
      appBar: AppBar(
        title: const Center(
          child: Text("Flutter BLoC packAge"),
        ),
      ),
      body: Center(
        child: AnimatedContainer(
            duration: const Duration(milliseconds: 500),
            width: 100,
            height: 100,
            color: Colors.amber),
      ),
    );
  }
}
