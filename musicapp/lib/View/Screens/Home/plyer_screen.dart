


import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicapp/Constants/dumy_datat.dart';
import 'package:musicapp/Utils/navigation_bar.dart';

class PlyerScreen extends StatefulWidget {
  final int index;
  const PlyerScreen({ super.key ,required this.index});

  @override
  State<PlyerScreen> createState() => _PlyerScreenState();
}

class _PlyerScreenState extends State<PlyerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      backgroundColor: Color.fromRGBO(19, 19, 19, 1),
      bottomNavigationBar: buildBottomNavigationBar(),

      body: Column( 

        children: [ 
          Container(
            // color: Colors.red,
            child: Stack(
              children: [
                Container( 
                  height: 600,
                  width: double.infinity,
                
                 decoration: BoxDecoration( 
                  image: DecorationImage( 
                    fit: BoxFit.cover,
                    image: AssetImage( 
                      discographyCardList[widget.index]["image"],
                    )
                  )
                 ),
                ),
                Flexible(
            
                  child: Container( 
                    margin: const EdgeInsets.only(top:420),
                    height: 350,
                    width: double.infinity,
                    decoration:const  BoxDecoration( 
                      image: DecorationImage( 
                        fit: BoxFit.fill,

                        
                        image: AssetImage( 
                          
                          // "lib/Assets/img/Plyer_Ellipse.png"
                          "lib/Assets/img/WellScreenEllipse.png"
                          
                        )
                      )
                    ),
                  ),
            
                ),
            
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  // height: 50,
                  margin:const EdgeInsets.only(top: 550), 
                  child:Column( 
                    
                    children: [ 
                      Text(
                        textAlign: TextAlign.center,
                       "${discographyCardList[widget.index]["title"]} in the Abyss",

                        style: GoogleFonts.inter(
                          color:Color.fromRGBO(230, 154, 21, 1),
                      fontSize:23

                        ),
                      ),
                      Text(
                        textAlign: TextAlign.center,
                      //  "${discographyCardList[widget.index]["title"]} in the Abyss",
                      "Youlakou",
                        style: GoogleFonts.inter(
                          color:Colors.white
                        ),
                      ),
                    ],
                  ),
                ),

                  Container( 
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    margin: EdgeInsets.only(top: 630),
            // height: 100,
            // color: Colors.red,
            width: double.infinity,
            child: Column( 

              children: [ 
                Container(
                  width: double.infinity,
                  alignment: Alignment.centerRight,
                  child: SvgPicture.asset("lib/Assets/icons/svg/radix-icons_share-2.svg"),),
                Row( 
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Dynamic Warmup | ",
                    style:          GoogleFonts.inter(
                      color:Colors.white,
                      fontWeight:FontWeight.w400,
                      fontSize:14

                    )
                    
                    ),

                    Text("4 min",
                    style:          GoogleFonts.inter(
                      color:Colors.white,
                      fontWeight:FontWeight.w400,
                      fontSize:14

                    )
                    
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                LinearProgressIndicator(
                          color:Color.fromRGBO(230, 154, 21, 1),

                ),



                Container( 
                  margin: EdgeInsets.only(top: 
                  10),
                  // padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row( 
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [ 
                      SvgPicture.asset(
                        "lib/Assets/icons/plyer_icons/repeat_mode.svg"
                      ),
                      SvgPicture.asset(
                        "lib/Assets/icons/plyer_icons/previous.svg"
                      ),
                        SvgPicture.asset(
                        // "lib/Assets/icons/plyer_icons/previous.svg"
                        "lib/Assets/icons/plyer_icons/stop_play.svg"
                      ),
                        SvgPicture.asset(
                          "lib/Assets/icons/plyer_icons/next.svg"
                      ),
                        SvgPicture.asset(
                          "lib/Assets/icons/plyer_icons/mingcute_volume-fill.svg"
                      ),
                    ],
                  ),
                )
                

              ],
            ),
          )
              ],
            ),
          ),

        
        ],
      ),

    );
  }
}