import 'package:flutter/material.dart';
import 'package:glassmorphism_widgets/glassmorphism_widgets.dart';


class search extends StatelessWidget {
  const search({super.key});

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
                padding: EdgeInsets.all(24),
                child: GlassContainer(
                  border: 3,
                  radius: 40,
                  child: Padding(
                  padding: EdgeInsets.all(14),
                  child: Row(
                    children: [
                      GlassIcon(Icons.search_outlined,size: 35,),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal:16),
                          child: Container(
                            
                            height: 20,
                            child: const TextField(
                               style: TextStyle(color: Colors.white),
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
                      ),
                    ],
                  ),
                 ),
                ),
              ),
                Padding(
              padding: const EdgeInsets.symmetric(horizontal:24),
              child: Text('Sections',
              style: TextStyle(fontFamily: 'badScript',
              color: Colors.white,
              fontSize: 40),),
            ),
            Expanded(
              child: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal:24, vertical: 8),
                    child: createSection(context, 'Drama'),
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal:24, vertical: 8),
                    child: createSection(context, 'Romance'),
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal:24, vertical: 8),
                    child: createSection(context, 'Action'),
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal:24, vertical: 8),
                    child: createSection(context, 'Adventure'),
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal:24, vertical: 8),
                    child: createSection(context, 'Comedy'),
                  ),
                   Padding(
                    padding: const EdgeInsets.symmetric(horizontal:24, vertical: 8),
                    child: createSection(context, 'Science fiction'),
                  ),
                   Padding(
              padding: const EdgeInsets.symmetric(horizontal:24, vertical: 8),
              child: createSection(context, 'Documantary'),
            ),
             Padding(
              padding: const EdgeInsets.symmetric(horizontal:24, vertical: 8),
              child: createSection(context, 'Cartoon'),
            ),
                ],
              ),
            ),
        ],),
      )
    );
  }
}

GlassContainer createSection(context, String text){
 return GlassContainer(
  radius: 45,
  height: 80,    
  width:  MediaQuery.of(context).size.width/0.8,  
  child:Padding(
    padding: const EdgeInsets.symmetric(horizontal:20, vertical:10),
    child: Text(text,
     style: TextStyle(fontFamily: 'badScript',
                color: Colors.white,
                fontSize: 30),),
  ),
        
  );
}