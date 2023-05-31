import 'package:flutter/material.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:mobileapp/mainScreens/register.dart';


class signIn extends StatelessWidget {
  const signIn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomInset: true,
         body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/BCKGROUND.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20,),
             
                 Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                   children: [

                     Padding(
                       padding: const EdgeInsets.only(top:30),
                       child: SizedBox(
                         height: 180,
                          child: Image.asset('images/video.png')),
                     ),
                   ],
                 ),
                Padding(
              padding: const EdgeInsets.only(left:24, top: 10),
              child: Text('Sign In',
              style: TextStyle(fontFamily: 'badScript',
              color: Colors.white,
              fontSize: 50),),
            ),
           Expanded(
             child: SingleChildScrollView (
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                     Padding(
                      padding: const EdgeInsets.only(left:24, top:20),
                      child: Text('My email is: ',
                      style: TextStyle(fontFamily: 'badScript',
                      color: Colors.white,
                      fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:24),
                      child: Container(
                      width: 350,     
                       child: const TextField(
                          style: TextStyle(color: Colors.white,fontSize: 24),
                         cursorColor: Colors.white, 
                               decoration: InputDecoration(        
                              enabledBorder: UnderlineInputBorder(      
                                       borderSide: BorderSide(color: Colors.white),   
                              ),  
                               focusedBorder: UnderlineInputBorder(
                                       borderSide: BorderSide(color: Colors.white),
                                   ),  
                             ),           
                         ),),
                    ),
                     Padding(
                      padding: const EdgeInsets.only(left:24, top:20),
                      child: Text('My password is: ',
                      style: TextStyle(fontFamily: 'badScript',
                      color: Colors.white,
                      fontSize: 25),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:24),
                      child: Container(
                      width: 350,     
                       child: const TextField(
                          style: TextStyle(color: Colors.white,fontSize: 24),
                         cursorColor: Colors.white, 
                               decoration: InputDecoration(        
                              enabledBorder: UnderlineInputBorder(      
                                       borderSide: BorderSide(color: Colors.white),   
                              ),  
                               focusedBorder: UnderlineInputBorder(
                                       borderSide: BorderSide(color: Colors.white),
                                   ),  
                             ),           
                         ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:24, vertical: 40),
                      child: GlassButton(
                         onPressed: () {
                      },
                     radius: 40,
                    child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:22,),
                        child: Text("I'm ready!" ,
                          style: TextStyle(fontFamily: 'badScript',
                          color: Colors.white,
                          fontSize: 25),),
                                    ),
                                ),
                    ),
                 ],
               ),
             ),
           ),
              Padding(
              padding: const EdgeInsets.only(left:24, top:20, bottom: 10),
              child: Row(
                children: [
                  Text("but I don't have an account ... ",
                  style: TextStyle(fontFamily: 'badScript',
                  color: Colors.white,
                  fontSize: 20),),
                   InkWell(
                     child: Text('Register',
                       style: TextStyle(fontFamily: 'badScript',
                        color: Colors.white,
                        fontSize: 20),),
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: ((context) => Register())));
                        },
                   ),
                ],
              ),),
        ],),
      )
    );
  }
}

