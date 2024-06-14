import 'package:flutter/material.dart';
import 'package:singletonpractice/controller.dart';
import 'package:singletonpractice/singleton_one_controller.dart';
import 'package:singletonpractice/singleton_two_controller.dart';

import 'singleton_three_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SingleTonOne SingleTonone_test_one = SingleTonOne.getInstance();
    SingleTonOne SingleTonone_test_two = SingleTonOne.getInstance();
    SingleTonOne SingleTonone_test_three = SingleTonOne.getInstance();
    SingleTonTwo SingleTontwo_test_one = SingleTonTwo.instance;
    SingleTonTwo SingleTontwo_test_two = SingleTonTwo.instance;
    SingleTonTwo SingleTontwo_test_three = SingleTonTwo.instance;
    SingleTonThree SingleTonThree_test_one = SingleTonThree();
    SingleTonThree SingleTonThree_test_two = SingleTonThree();
    SingleTonThree SingleTonThree_test_three = SingleTonThree();
    /*SingleTonOne one = SingleTonOne();
    SingleTonOne two = SingleTonOne();
    SingleTonOne three = SingleTonOne();*/
    ListController controller = ListController();
    return SafeArea(child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Done')),
          ElevatedButton(onPressed: (){
            controller.sum = 2 + 2 ;
            Navigator.push(context , MaterialPageRoute(builder: (context) => SecondPage()));
          }, child: Text('Click'))
        ],
      ),
    ));
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(
        child: Text(ListController().sum.toString()),
      ),
    ));
  }
}


