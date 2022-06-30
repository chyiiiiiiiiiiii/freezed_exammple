import 'package:flutter/material.dart';

import 'models/movie.dart';
import 'states/home_state.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter freezed',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final HomeState homeState = HomeLoaded([
      Movie(id: '1', name: 'Fast'),
      Movie(id: '2', name: 'Dr.Strange'),
    ]);

    return Scaffold(
      appBar: AppBar(title: const Text('freezed')),
      body: Center(
        child: homeState.map(
          init: (init) => const Text('init'),
          loading: (loading) => const Text('loading'),
          dataLoaded: (loaded) => ListView.builder(
            itemBuilder: (contex, index) {
              return ListTile(
                title: Text(loaded.movies[index].name),
              );
            },
            itemCount: loaded.movies.length,
          ),
          error: (error) => Text(error.message),
        ),
      ),
    );
  }
}
