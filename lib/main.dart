// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, deprecated_member_use, sized_box_for_whitespace, prefer_const_constructors_in_immutables, duplicate_ignore, unused_field, annotate_overrides, prefer_typing_uninitialized_variables, unnecessary_new, unused_local_variable, prefer_final_fields
// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, deprecated_member_use, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unused_import, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'aiptest.dart';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'youtube.dart';
import 'urllink.dart';
import 'networking.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: AipTest(),
  ));
}

class AipTest extends StatefulWidget {
  @override
  State<AipTest> createState() => _AipTestState();
}

class _AipTestState extends State<AipTest> {
  
  PageController? _pagecontroller;
  var selectedPage;
  void initState() {
    super.initState();
   _pagecontroller=PageController();
  }
   

  
  @override
  Widget build(BuildContext context) {
   
  //  List<Widget> items=[
  //    Urllink(),
  //    Youtube()
     
  //  ];
    int _index = 0;

    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            "Youtube Video Downloader",
          ),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          backgroundColor: Color(0xff0B0B45),
          actions: [
            Row(
              children: [],
            )
          ],
        ),
        bottomNavigationBar: CurvedNavigationBar(
          height: 65,
         
          items: <Widget>[
            Icon(Icons.add_link, size: 30, color: Colors.white),
            Icon(Icons.video_collection, size: 30, color: Colors.white),
            Icon(Icons.exit_to_app_rounded, size: 30, color: Colors.white),
          ],
          color: Color(0xff0B0B45),
          buttonBackgroundColor: Color(0xff0B0B45),
          animationDuration: Duration(milliseconds: 110),
          backgroundColor: Colors.white,
          animationCurve: Curves.linear,
          onTap: (index) {
            setState(() {
              _pagecontroller!.jumpToPage(index);
             
            });
            
            // setState(
            //   () {
            //     if (_index==index) {
            //      setState(() {
            //        index;
            //      });
                  
            //       // Navigator.push(
            //       //     context,
            //       //     MaterialPageRoute(
            //       //       builder: (context) => Youtube(),
            //       //     ));
            //     } else if (_index == 2) {
            //       Navigator.push(
            //         context,
            //         MaterialPageRoute(builder: (context) => Urllink()),
            //       );
            //     }else{
            //       Navigator.pop(context);
            //     }
            //   },
            // );

            // Navigator.pop(context);
          },
           letIndexChange: (index) => true,
        ),
        body: PageView(

            controller: _pagecontroller,
          children: <Widget>[
            Urllink(),
            Youtube(),
            Urllink()
           
          ],
          onPageChanged: (int index) {
            setState(() {

              _pagecontroller!.jumpToPage(index);
            });
          }
          ),
      ),
    );
  }
}

// class UiDesign extends StatefulWidget {
//   @override
//   _UiDesignState createState() => _UiDesignState();
// }

// class _UiDesignState extends State<UiDesign> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Expanded(
//               child: Scaffold(
//           floatingActionButton: FloatingActionButton(
//             backgroundColor: Colors.orange[900],
//             shape:
//                 RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
//             onPressed: () {
//               Navigator.push(
//                   context, MaterialPageRoute(builder: (context) => AipTest()));
//             },
//             child: Icon(
//               Icons.add,
//               size: 30,
//             ),
//           ),
//           backgroundColor: Color(0xff0B0B45),
//           body: SafeArea(
//             child:  Column(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: <Widget>[
//                   Container(
//                     margin: EdgeInsets.all(15),
//                     child: Column(
//                       children: [
//                         Align(
//                           alignment: Alignment.topLeft,
//                           child: Icon(
//                             Icons.arrow_back,
//                             color: Colors.white,
//                             size: 35,
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Align(
//                           alignment: Alignment.topLeft,
//                           child: Text(
//                             "Yosemite",
//                             style: GoogleFonts.roboto(
//                                 color: Colors.white,
//                                 fontSize: 25,
//                                 fontWeight: FontWeight.bold,
//                                 letterSpacing: 3),
//                           ),
//                         ),
//                         Align(
//                           alignment: Alignment.topLeft,
//                           child: Text(
//                             "Summer Camp",
//                             style: GoogleFonts.roboto(
//                                 color: Colors.white,
//                                 fontSize: 25,
//                                 fontWeight: FontWeight.bold,
//                                 letterSpacing: 3),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 10,
//                         ),
//                         Align(
//                           alignment: Alignment.topLeft,
//                           child: Text(
//                             "15 - 20 August 2019",
//                             style: GoogleFonts.roboto(
//                                 color: Color(0xffC3C3C3), fontSize: 17),
//                           ),
//                         ),
//                         SizedBox(
//                           height: 20,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             Stack(
//                               children: [
//                                 Row(
//                                   children: [
//                                     CircleAvatar(
//                                         backgroundColor: Color(0xff0B0B45),
//                                         backgroundImage:
//                                             AssetImage("images/FIRST.jpeg")),
//                                     CircleAvatar(
//                                         backgroundColor: Color(0xff0B0B45),
//                                         backgroundImage:
//                                             AssetImage("images/SECOND.jpeg")),
//                                     CircleAvatar(
//                                         backgroundColor: Color(0xff0B0B45),
//                                         backgroundImage:
//                                             AssetImage("images/THIRD.jpeg")),
//                                   ],
//                                 )
//                               ],
//                             ),
//                             Container(
//                               padding: EdgeInsets.fromLTRB(25, 5, 25, 5),
//                               height: 35,
//                               width: 150,
//                               decoration: BoxDecoration(
//                                   color: Colors.grey.withOpacity(
//                                       0.2), //Color(0xff0B0B45).withOpacity(1.0),
//                                   borderRadius: BorderRadius.circular(20)),
//                               child: Row(
//                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                                 children: <Widget>[
//                                   Icon(
//                                     Icons.check,
//                                     color: Colors.white,
//                                     size: 20,
//                                   ),
//                                   Text(
//                                     "You Joined",
//                                     style: TextStyle(color: Colors.white),
//                                   )
//                                 ],
//                               ),
//                             )
//                           ],
//                         )
//                       ],
//                     ),
//                   ),
//                  Column(
//                       children: [
//                       Container(
//                             height: 400,
//                             decoration: BoxDecoration(
//                                 color: Colors.white,
//                                 borderRadius: BorderRadius.only(
//                                   topLeft: Radius.circular(20),
//                                   topRight: Radius.circular(20),
//                                 )),
//                             child: ListView(
//                                                         children: [
//                                 Column(
//                                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                                   children: <Widget>[
//                                     Container(
//                                       child: Divider(
//                                         color: Colors.grey.withOpacity(0.5),
//                                         thickness: 5,
//                                         endIndent: 150,
//                                         indent: 150,
//                                       ),
//                                     ),
//                                     Container(
//                                       margin: EdgeInsets.all(15),
//                                       child: Align(
//                                           alignment: Alignment.topLeft,
//                                           child: Text(
//                                             "Itinerary",
//                                             style: GoogleFonts.roboto(
//                                                 fontSize: 20,
//                                                 fontWeight: FontWeight.bold),
//                                           ),
//                                           ),
//                                     ),
//                                     Itinerary(
//                                       firstHead: "Building a Camp",
//                                       secondHead:
//                                           "Build a tent suitable for you in the camp",
//                                       thirdHead:
//                                           "Make sure you abide by the rules...",
//                                       fourthHead: "8",
//                                       image: AssetImage(
//                                         "images/img.png",
//                                       ),
//                                     ),
//                                     Itinerary(
//                                       firstHead: "Bonfire Preperation",
//                                       secondHead: "Its so cold outside my nigga",
//                                       thirdHead:
//                                           "Ensure to stay close to the fire...",
//                                       fourthHead: "9",
//                                       image: AssetImage("images/bonfire.png"),
//                                     ),
//                                     Itinerary(
//                                       firstHead: "Barbeque",
//                                       secondHead: "Yummy something coming your way",
//                                       thirdHead: "Do not liter the environment...",
//                                       fourthHead: "10",
//                                       image: AssetImage("images/img2.png"),
//                                     ),
//                                     Itinerary(
//                                       firstHead: "Barbeque",
//                                       secondHead: "Yummy something coming your way",
//                                       thirdHead: "Do not liter the environment...",
//                                       fourthHead: "10",
//                                       image: AssetImage("images/img2.png"),
//                                     ),
//                                     Itinerary(
//                                       firstHead: "Barbeque",
//                                       secondHead: "Yummy something coming your way",
//                                       thirdHead: "Do not liter the environment...",
//                                       fourthHead: "10",
//                                       image: AssetImage("images/img2.png"),
//                                     ),
//                                     Itinerary(
//                                       firstHead: "Barbeque",
//                                       secondHead: "Yummy something coming your way",
//                                       thirdHead: "Do not liter the environment...",
//                                       fourthHead: "10",
//                                       image: AssetImage("images/img2.png"),
//                                     ),
//                                   ],
//                                 ),
//                               ],
//                             ),
//                           ),

//                       ],
//                     ),

//                 ],
//               ),
//             ),
//           ),
//       ),

//     );
//   }
// }

// class Itinerary extends StatelessWidget {
//   final String firstHead;
//   final String secondHead;
//   final String thirdHead;
//   final String fourthHead;
//   final AssetImage image;
//   Itinerary(
//       {required this.firstHead,
//       required this.secondHead,
//       required this.thirdHead,
//       required this.fourthHead,
//       required this.image});

//   @override
//   Widget build(BuildContext context) {
//     return Align(
//       alignment: Alignment.topLeft,
//       child: Container(
//         width: double.infinity,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             Align(
//               alignment: Alignment.topLeft,
//               child: Container(
//                 child: Container(
//                   padding: EdgeInsets.all(1000),
//                   height: 60,
//                   width: 60,
//                   margin: EdgeInsets.all(15),
//                   decoration: BoxDecoration(
//         ),
//           ],
//         ),
//       ),
//     );
//   }                 color: Colors.grey.withOpacity(0.4),
//                       borderRadius: BorderRadius.circular(10),
//                       image: DecorationImage(
//                         image: image,
//                       )),
//                 ),
//               ),
//             ),
//             Container(
//               width: 250,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: <Widget>[
//                   Text(
//                     firstHead,
//                     style: TextStyle(fontWeight: FontWeight.w900, fontSize: 20),
//                   ),
//                   SizedBox(
//                     height: 7,
//                   ),
//                   Text(
//                     secondHead,
//                     style: TextStyle(
//                       color: Colors.black,
//                     ),
//                   ),
//                   SizedBox(
//                     height: 7,
//                   ),
//                   Text(
//                     thirdHead,
//                     style: TextStyle(
//                       color: Colors.black,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             Container(
//               padding: EdgeInsets.only(right: 10),
//               height: 60,
//               child: Text(
//                 "$fourthHead pm",
//                 style: TextStyle(
//                   color: Colors.black,
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
