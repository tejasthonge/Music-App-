import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:musicapp/Utils/navigation_bar.dart';

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
                color: Colors.red,
              )),
          Expanded(
            flex: 6,
            child: Container(),
          )
        ],
      ),
    );
  }
}
