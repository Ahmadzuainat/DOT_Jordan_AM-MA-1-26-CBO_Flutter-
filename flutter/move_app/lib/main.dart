import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/movie_provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => MovieProvider(),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // shold but hem on the build to work
    Provider.of<MovieProvider>(context).fetchMovies();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Movies App'),
      ),
    );
  }
}
