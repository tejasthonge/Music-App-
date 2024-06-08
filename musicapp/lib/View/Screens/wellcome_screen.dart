import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicapp/View/Screens/Home/Home_gallery_screen.dart';





class WellcomeScreen extends StatefulWidget {
  const WellcomeScreen({super.key});

  @override
  State<WellcomeScreen> createState() => _WellcomeScreenState();
}

class _WellcomeScreenState extends State<WellcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(19, 19, 19, 1),
      body: Stack(
        children: [
          Container( 
            height: 700,
          
            decoration:const BoxDecoration( 
          
              image: DecorationImage( 
                image: AssetImage(
                  "lib/Assets/img/wellcomeBG.png",
                ),
                fit: BoxFit.cover,
              )
            ),
          ),
          Container( 
            
            // height: 700,

            margin: EdgeInsets.only(top: 450),
          
            decoration:const BoxDecoration( 
          
              image: DecorationImage( 
                image: AssetImage(
                  "lib/Assets/img/WellScreenEllipse.png",
                ),
                fit: BoxFit.cover,
              )
            ),
          ),
          Container( 
            width: double.infinity,
            alignment: Alignment.center,

            margin:const EdgeInsets.only(top: 460,),

            child: Column( 

              children: [ 

                Text("Dancing between\nThe shadows\nOf rhythm",
                  style: GoogleFonts.inter(
                    color:Colors.white,
                    fontSize:36,
                    fontWeight:FontWeight.w600
                  ),
                 ),
                  GestureDetector(
                    onTap:(){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_)=>const HomeGallery())
                      );
                    },
                    child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 85,right: 85,top: 20),
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric( 
                        vertical:10
                      ),
                      decoration: BoxDecoration( 
                        borderRadius: BorderRadius.circular(19),
                        color: Color.fromRGBO(255, 46, 0, 1),
                        
                    
                      ),
                    
                      child:Text( 
                    
                        "Get started",
                    
                        style: GoogleFonts.inter(
                          fontSize:20,
                          fontWeight:FontWeight.w600
                        ),
                      ) ,
                    ),
                  ),
                  
                  GestureDetector(
                    onTap:(){

                    },
                    child: Container(
                      width: double.infinity,
                      margin: EdgeInsets.only(left: 85,right: 85,top: 15),
                      alignment: Alignment.center,
                      padding: EdgeInsets.symmetric( 
                        vertical:10
                      ),
                      decoration: BoxDecoration( 
                        border: Border.all(
                        color: Color.fromRGBO(255, 46, 0, 1),

                        ),
                        borderRadius: BorderRadius.circular(19),
                        // color: Color.fromRGBO(255, 46, 0, 1),
                        
                    
                      ),
                    
                      child:Text( 
                    
                        "Continue with Email",
                    
                        style: GoogleFonts.inter(
                          fontSize:20,
                          fontWeight:FontWeight.w600,
                        color: Color.fromRGBO(255, 46, 0, 1),

                        ),
                      ) ,
                    ),
                  ),
                  
                  const SizedBox( 
                    height: 20,
                  ),
                  Text(
                    "by continuing you agree to terms\nof services and  Privacy policy",

                    textAlign: TextAlign.center,

                    style: GoogleFonts.inter(
                      
                      color:Color.fromRGBO(203, 200, 200, 0.401),
                      fontWeight:FontWeight.w600
                    ),
                  )

              ],
            ),
          )
        ],
      ),
    );
  }
}