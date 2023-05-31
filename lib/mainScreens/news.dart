import 'package:flutter/material.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';
import 'package:mobileapp/mainScreens/register.dart';


class News extends StatelessWidget {
  const News({super.key});

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
            const SizedBox(height: 40,),
             Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:  [
               Padding(
                padding: EdgeInsets.symmetric(horizontal:24,),
                child: InkWell(
                  child: GlassContainer(
                    border: 3,
                    radius: 40,
                    child: Padding(
                    padding: EdgeInsets.all(14),
                    child: GlassIcon(Icons.add,size: 30,),
                   ),
                  ),
                  onTap: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>search()));
                  },
                ),
              ),
            ],),
                Padding(
              padding: const EdgeInsets.only(left:24, top: 10),
              child: Text('News',
              style: TextStyle(fontFamily: 'badScript',
              color: Colors.white,
              fontSize: 50),),
            ),
           Expanded(
             child: SingleChildScrollView (
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.only(left:24),
                      child: CircleAvatar(
                        radius: 24,
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal:14),
                        child: GlassText('Sama',
                                  style: TextStyle(fontFamily: 'badScript',
                                  color: Colors.white,
                                  fontSize: 28),),
                      ),
                    ),
                     Padding(
                       padding: const EdgeInsets.only(right:24),
                       child: GlassButton(
                           onPressed: () {
                        },
                       radius: 40,
                                         child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:10,),
                          child: GlassText("follow" ,
                            style: TextStyle(fontFamily: 'badScript',
                            color: Colors.white,
                            fontSize: 18),),
                                      ),
                                  ),
                     ),
                  ],),
                Padding(
              padding: const EdgeInsets.only(left:34, top: 10),
              child: GlassText('this episode is deleyed until next week, on monday ',
              style: TextStyle(fontFamily: 'badScript',
              color: Colors.white,
              fontSize: 28),),
            ),
                   Padding(
              padding: const EdgeInsets.only(left:34, top: 10),
              child: GlassText('20 LIkes, 10 comments',
              style: TextStyle(fontFamily: 'badScript',
              color: Colors.white,
              fontSize: 18),),
            ),
                    Padding(
                padding: EdgeInsets.symmetric(horizontal:24),
                child: GlassContainer(
                  border: 3,
                  radius: 40,
                  child: Padding(
                  padding: EdgeInsets.all(14),
                  child: Row(
                    children: [
                      GlassIcon(Icons.heart_broken,size: 35,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:16),
                          child: Container(
                            
                            height: 36,
                            child: const TextField(
                              
                               style: TextStyle(color: Colors.white),
                              cursorColor: Colors.white, 
                                    decoration: InputDecoration(        
                                      hintText: 'comment',
                                      hintStyle: TextStyle(fontFamily: 'badScript',
                                      color: Colors.white54,
                                      fontSize:25),
                                   enabledBorder: UnderlineInputBorder(      
                                            borderSide: BorderSide(color: Colors.white),   
                                   ),  
                                    focusedBorder: UnderlineInputBorder(
                                            borderSide: BorderSide(color: Colors.white),
                                        ),  
                                  ),           
                                                 ),),
                        ),
                      ),
                    ],
                  ),
                 ),
                ),
              ),
                 ],
               ),
             ),
           ),
           
        ],),
      )
    );
  }
}

