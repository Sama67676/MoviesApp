import 'package:flutter/material.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:mobileapp/signin.dart';


class profile extends StatelessWidget {
  const profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/BCKGROUND.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(  crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.only(top:44, left: 44),
                child: CircleAvatar(radius: 50,)
              ),
                Padding(
              padding: const EdgeInsets.symmetric(horizontal:44),
              child: Row(
                children: [
                  Text('Sama',
                  style: TextStyle(fontFamily: 'badScript',
                  color: Colors.white,
                  fontSize: 40),),
                  SizedBox(width: 10,),
                  IconButton(onPressed: (){}, 
                  icon: Icon(Icons.edit_outlined,
                  color: Colors.white,
                  size: 30,))
                ],
              ),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:24,vertical: 10),
                          child: Text('My lists',
                          style: TextStyle(fontFamily: 'badScript',
                        color: Colors.white,
                        fontSize: 25),),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal:24,vertical: 10),
                          child: Text("I'm following",
                          style: TextStyle(fontFamily: 'badScript',
                        color: Colors.white,
                        fontSize: 25),),
                        ),
                                  Padding(
                          padding: const EdgeInsets.symmetric(horizontal:24,vertical: 10),
                          child: Text('My screen time',
                          style: TextStyle(fontFamily: 'badScript',
                        color: Colors.white,
                        fontSize: 25),),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal:24),
                      child: InkWell(
                        child: Text('Log out',
                        style: TextStyle(fontFamily: 'badScript',
                        color: Colors.white,
                         fontSize: 30),),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => signIn())));
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ],),
      )
    );
  }
}

