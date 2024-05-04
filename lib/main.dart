import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(const TestApp());
}

class TestApp extends StatefulWidget {
  const TestApp({super.key});

  @override
  State<TestApp> createState() => _TestAppState();
}

class _TestAppState extends State<TestApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: height * .4,
                decoration: const BoxDecoration(
                    color: Colors.cyan,
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(155))),
              ),
              Container(
                color: Colors.cyan,
                child: Container(
                  height: height * .5,
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius:
                          BorderRadius.only(topLeft: Radius.circular(155))),
                ),
              ),
            ],
          ),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             SizedBox(height: height *0.8,),
           ClipOval(
             child: Image.asset(
               "images/profile.jpg",
               width: 160,
               height: 160,
               fit: BoxFit.cover,
             ),
           ),
         ],)
        ],
      ),
    );
  }
}
