import 'package:flutter/material.dart';
import 'package:simple_ripple_animation/simple_ripple_animation.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        snackBarTheme: const SnackBarThemeData(
          backgroundColor: Colors.brown,
          contentTextStyle: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  

  @override
  Widget build(BuildContext context) {

  return Scaffold(
    appBar: AppBar(
      title: const Text('Ripple Animation',style: TextStyle(color: Colors.white,fontSize: 15)),
      backgroundColor: Colors.green,
      centerTitle: true,
    ),
    body: Center(
      child: SizedBox(
        height: 200,
        width: 200,
        child: RippleAnimation(
          repeat: true,
          color: Colors.red,
          minRadius: 100,
          ripplesCount: 6,
          child: Container()
          ),
        ),
      ),
      floatingActionButton: RippleAnimation(
        repeat: true,
        color: Colors.green,
        minRadius: 60,
        ripplesCount: 6,
        child: FloatingActionButton(
          backgroundColor: Colors.green,
          onPressed: () {},
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ), 
    );
  }
}