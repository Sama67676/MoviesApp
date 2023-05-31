import 'package:flutter/material.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:mobileapp/signin.dart';

import 'mainScreens/foryou.dart';
import 'mainScreens/latest.dart';
import 'mainScreens/news.dart';
import 'mainScreens/zoomdrawer.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
int index=0;
  final List<Widget> children = [
    ZoomDrawerPage(),
    News(),
    latest(),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: children[index],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal:20, vertical: 10),
        child: GlassContainer(
          radius: 45,
          child: GlassBottomBar(
               items:
              [
                GlassBottomBarItem(
                  icon: const Icon(Icons.home_outlined, color: Colors.white,),
                  title: const GlassText("Home"),
                ),
                GlassBottomBarItem(
                  icon: const Icon(Icons.newspaper_outlined, color: Colors.white,),
                  title: const GlassText("News"),
                ),
                GlassBottomBarItem(
                  icon: const Icon(Icons.hourglass_bottom_outlined, color: Color.fromARGB(255, 180, 178, 178),),
                  title: const GlassText("Latest"),
                ),
              ],
              onTap: (i) {
                setState(() {
                  index = i;
                });
              },
              currentIndex: index,
            ),
        ),
          
        ),
      
      // body: Container(
      //   decoration: const BoxDecoration(
      //     image: DecorationImage(
      //       image: AssetImage("images/BCKGROUND.png"),
      //       fit: BoxFit.cover,
      //     ),
      //   ),
        
      // )
    );
  }
}

