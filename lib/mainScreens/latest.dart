import 'package:flutter/material.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';


class latest extends StatelessWidget {
  const latest({super.key});
  
  @override
  Widget build(BuildContext context) {
    var hgt=MediaQuery.of(context).size.height * 0.15;
    var wid=MediaQuery.of(context).size.width * 0.9;
    var halfwid=MediaQuery.of(context).size.width * 0.35;
    return Scaffold(
      
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
                    child: GlassIcon(Icons.hourglass_empty,size: 30,),
                   ),
                  ),
                  onTap: (){
                    // Navigator.push(context, MaterialPageRoute(builder: (context)=>search()));
                  },
                ),
              ),
            ],),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal:24),
              child: Text('Latest',
              style: TextStyle(fontFamily: 'badScript',
              color: Colors.white,
              fontSize: 40),),
            ),
            Expanded(
              child: ListView(
                children: [
                   Padding(
                      padding: const EdgeInsets.symmetric(horizontal:24),
                      child: Text('Today',
                      style: TextStyle(fontFamily: 'badScript',
                      color: Colors.white,
                      fontSize: 28),),
                   ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 24),
                    child: GlassContainer(
                      radius: 45,
                      height:hgt,
                      width:  wid,
                     child:
                        Row(
                          children: [
                            Container(
                                  height:hgt,
                                    width:  halfwid,
                              child: ClipRRect(
                              borderRadius: BorderRadius.circular(55),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Container(
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: ExactAssetImage("images/Room_(2015_film).png"),
                                            fit: BoxFit.fitWidth,
                                          ),
                                       ),),
                                  ),
                                ),
                            ),
                       Padding(
                      padding: const EdgeInsets.symmetric(horizontal:24),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           Container(
                                 constraints: const BoxConstraints(
                                maxWidth: 120,
                               ),
            
                                child: Padding(
                                  padding: const EdgeInsets.only(top:15),
                                  child: GlassText("Room",
                                         style: TextStyle(
                                          overflow: TextOverflow.ellipsis,
                                          fontFamily: 'badScript', color: Colors.white, fontSize: 30, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                               Row(
                               children: [
                                    GlassText("Drama   ongoing",
                                         style: TextStyle(fontFamily: 'badScript', color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
                                  ),
                               ],
                             ),
                        
                          ],
                        ),
                      
                    ),
                          ],
                        ),
                            ),
                            
                  ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:24),
                      child: Text('Monday',
                      style: TextStyle(fontFamily: 'badScript',
                      color: Colors.white,
                      fontSize: 28),),
                   ),
                   Padding(
                    padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 24),
                    child: GlassContainer(
                      radius: 45,
                      height: hgt,
                      width:  wid,
                     child:
                        Row(
                          children: [
                            Container(
                                  height: hgt,
                                    width:  halfwid,
                              child: ClipRRect(
                              borderRadius: BorderRadius.circular(55),
                                  child: Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Container(
                                        decoration: const BoxDecoration(
                                          image: DecorationImage(
                                            image: ExactAssetImage("images/NeverLetMeGo(movie).jpg"),
                                            fit: BoxFit.fitWidth,
                                          ),
                                       ),),
                                  ),
                                ),
                            ),
                       Padding(
                      padding: const EdgeInsets.symmetric(horizontal:24),
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                           Container(
                                 constraints: const BoxConstraints(
                                maxWidth: 160,
                               ),
            
                                child: Padding(
                                  padding: const EdgeInsets.only(top:15),
                                  child: GlassText("Never let me go",
                                         style: TextStyle(
                                          overflow: TextOverflow.visible,
                                          fontFamily: 'badScript', color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                                GlassText("Romance   ongoing",
                                         style: TextStyle(fontFamily: 'badScript', color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
                                  ),
                          
                          ],
                        ),
                      
                    ),
                          ],
                        ),
                            ),
                            
                  ),
                  Padding(
                padding: const EdgeInsets.symmetric(vertical:8.0, horizontal: 24),
                child: GlassContainer(
                  radius: 45,
                  height: hgt,
                  width:  wid,
                 child:
                    Row(
                      children: [
                        Container(
                              height: hgt,
                                width: halfwid,
                          child: ClipRRect(
                          borderRadius: BorderRadius.circular(55),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Container(
                                    decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        image: ExactAssetImage("images/theLastOfUs(movie).jpg"),
                                        fit: BoxFit.fitWidth,
                                      ),
                                   ),),
                              ),
                            ),
                        ),
                   Padding(
                  padding: const EdgeInsets.symmetric(horizontal:24),
                  child:Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                       Container(
                             constraints: const BoxConstraints(
                            maxWidth: 160,
                           ),
            
                            child: Padding(
                              padding: const EdgeInsets.only(top:15),
                              child: GlassText("The Last of us",
                                     style: TextStyle(
                                      overflow: TextOverflow.visible,
                                      fontFamily: 'badScript', color: Colors.white, fontSize: 24, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                            GlassText("Drama   ongoing",
                                     style: TextStyle(fontFamily: 'badScript', color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
                              ),
                         
                      ],
                    ),
                  
                ),
                      ],
                    ),
                        ),
                        
              ),
                ],
              ),
            ),
          ],
        ),
      )
    );
  }
}

