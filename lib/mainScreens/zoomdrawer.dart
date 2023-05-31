import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';

import '../hidden/profile.dart';
import 'foryou.dart';

class ZoomDrawerPage extends StatefulWidget {
  const ZoomDrawerPage({super.key});

  @override
  State<ZoomDrawerPage> createState() => _ZoomDrawerPageState();
}

class _ZoomDrawerPageState extends State<ZoomDrawerPage> {
  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      menuScreen: profile(),
      mainScreen: ForYou(),
      showShadow: false,
      angle: -2.0,
      menuBackgroundColor: Colors.purple.shade300,
      menuScreenWidth: 700,
    
    );
  }
}

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(onTap: (){
      ZoomDrawer.of(context)!.toggle();
    },
    
     child: GlassContainer(
                  border: 3,
                  radius: 40,
                  child: Padding(
                  padding: EdgeInsets.all(14),
                  child: GlassIcon(Icons.person_outlined,size: 30,),
                 ),
                ),
    );
  }
}