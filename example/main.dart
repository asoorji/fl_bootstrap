import 'package:flutter/material.dart';
import 'package:fl_bootstrap/fl_bootstrap.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter App',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
                color: Colors.blue,
                width: MediaQuery.of(context).size.width,
                padding: const EdgeInsets.only(top: 30),
                margin: const EdgeInsets.only(bottom: 30),
                height: 150,
                child: Column(
                  children: const [
                    Text(
                      'My First Responsive Page',
                      style: TextStyle(
                          fontSize: 30,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'Resize this responsive page to see the effect!',
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ],
                )),
            FlBootstrap(
              colSm1: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Column 1\n'),
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit...\n'),
                  Text(
                      'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...\n'),
                ],
              ),
              colSm2: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Column 2\n'),
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit...\n'),
                  Text(
                      'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...\n'),
                ],
              ),
              colSm3: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Column 3\n'),
                  Text(
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit...\n'),
                  Text(
                      'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris...\n'),
                ],
              ),
              spacer: 20,
            ),
          ],
        ),
      ),
    );
  }
}
