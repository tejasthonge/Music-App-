import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:musicapp/Constants/dumy_datat.dart';
import 'package:musicapp/Utils/buttons.dart';
import 'package:musicapp/Utils/navigation_bar.dart';
import 'package:musicapp/View/Screens/Home/utiles.dart';
import 'package:musicapp/View/Screens/wellcome_screen.dart';

class HomeGallery extends StatefulWidget {
  const HomeGallery({super.key});

  @override
  State<HomeGallery> createState() => _HomeGalleryState();
}

class _HomeGalleryState extends State<HomeGallery> {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buildBottomNavigationBar(),
      backgroundColor: const Color.fromRGBO(19, 19, 19, 1),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Container(
                  child: Stack( 

                    children: [ 
                      Container( 
                        width: double.infinity,
                        decoration: BoxDecoration( 
                          image: DecorationImage( 
                          fit:BoxFit.cover,

                            image: AssetImage("lib/Assets/img/home scrrenSliding.png")
                          )
                        ),
                      ),

                      Container( 
                        margin: EdgeInsets.only(top: 250 ,left: 20),
                        child:Column( 

                          children: [ 
                            Text("A.L.O.N.E",
                              style: GoogleFonts.inter( 
                                fontSize:36,
                                fontWeight:FontWeight.w600,
                                color:Colors.white
                              ),
                            ),

                            buildRedButton(title: "Subscribe")
                          ],
                        )
                      )
                    ],
                  ),
                  // color: Colors.red,
                  )),
          Expanded(
            flex: 5,
            child: Container(
              // color: Colors.red,
              margin: EdgeInsets.only(top: 10, left: 20, right: 20),

              // color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  buildTopSeeAll(
                      title: "Discography",
                      color: Color.fromRGBO(255, 46, 0, 1)),
                  SizedBox(
                    height: 200,
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: discographyCardList.length,
                        itemBuilder: (context, index) {
                          return buildDiscographyCard(
                               context: context,
                               discographyCardList: discographyCardList,
                              index: index);
                        }),
                  ),
                  buildTopSeeAll(title: "Popular singles", color: Colors.white),
                  Flexible(
                    child: Container(
                      alignment: Alignment.topCenter,
                      // height: 160,
                      child: ListView.builder(
                          itemCount: 4,
                          itemBuilder: (context, index) {
                            return buildPopularCads(
                                popular_singlesList: popular_singlesList,
                                index: index);
                          }),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
