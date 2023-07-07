import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'Mx VideoPage.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
  List a=[
    "assets/image1.jpg",
    "assets/image2.jpg",
    "assets/image 3.jpg",
    "assets/image4.jpg",


  ];
  List c=[
    "Mylist",
    "Download",
    "Upcoming",
    "New & Free"
  ];
  List b=[
    Icon(Icons.add),
    Icon(Icons.arrow_circle_down_sharp),
    Icon(Icons.calendar_month),
    Icon(Icons.mic_sharp),
    Icon(Icons.play_circle_outline_outlined),
    Icon(Icons.videogame_asset),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      leading: Icon(Icons.video_collection_outlined),
        title: Padding(
          padding: const EdgeInsets.only(right:100),
          child: Text("MX Player",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,
          color: Colors.blue.shade500)
            ,),

        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_none),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.person),
          ),

        ],

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.home),
                Text("shows"),
                Text("movies"),
                Text("distrotv"),
                Text("mx vdesi"),

              ],
            ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CarouselSlider.builder(
                options: CarouselOptions(
                    height: 350,
                    aspectRatio: 8/9,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: false,
                    autoPlayInterval: const Duration(seconds: 2),
                    autoPlayAnimationDuration: const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    enlargeFactor: 0.3,
                    // onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                ),
                itemCount:a.length,
                itemBuilder: (BuildContext context, int index, int pageViewIndex)
                {
                  return
                    Center(
                      child: GestureDetector(
                        onTap: (){
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>  SamplePlayer()),
                          );
                        },
                        child: Container(
                          height: 304,
                          width: 450,
                         decoration: BoxDecoration(
                             image: DecorationImage(
                                 image: AssetImage(a[index]),fit: BoxFit.fill)),
                        ),
                      ),
                    );
                }
            ),
            Container(
              height: 160,
              child: ListView.builder(
                  scrollDirection:Axis.horizontal,
                  itemCount: a.length,
                  itemBuilder: (BuildContext context,int index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Card(
                            elevation: 20,
                            child: Container(
                              color: Colors.blue,
                              height: 100,
                              width: 100,
                              // decoration: BoxDecoration(
                              //     borderRadius: BorderRadius.circular(20)),
                              child: IconButton(onPressed: (){}, icon: b[index],
                                color: Colors.black,),
                            ),
                          ),
                          SizedBox(height: 10,),
                          Text(c[index])
                          // Expanded(child: Text(b[index])),
                        ],

                      ),
                    );
                  }
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text("Popular web shows in Tamil"),
            ),
            Container(
              height: 220,
              child: ListView.builder(
                  scrollDirection:Axis.horizontal,
                  itemCount: a.length,
                  itemBuilder: (BuildContext context,int index)

                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: 150,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5),
                              image: DecorationImage(image: AssetImage(a[index]),fit: BoxFit.fill),
                            ),
                          ),
                          // Expanded(child: Text(b[index])),
                        ],
                      ),
                    );
                  }
              ),
            ),
            Padding(
              padding:  EdgeInsets.only(left: 10),
              child: Text("Popular Right Now"),
            ),
            Container(
              height: 250,
              child: ListView.builder(
                  scrollDirection:Axis.horizontal,
                  itemCount: a.length,
                  itemBuilder: (BuildContext context,int index)
                  {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            height: 220,
                            width: 250,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(image: AssetImage(a[index]),fit: BoxFit.fill),
                            ),
                          ),
                          // Expanded(child: Text(b[index])),
                        ],
                      ),
                    );
                  }
              ),

            ),






          ],
        )









          ],
        ),
      ),


    );
  }
}



//
// class page1 extends StatefulWidget {
//   const page1({Key? key}) : super(key: key);
//
//   @override
//   State<page1> createState() => _page1State();
// }
//
// class _page1State extends State<page1> {
//
//
//
//   List a=[
//     "Watch on any device",
//     "Download and go",
//     "No pesky contracts"
//   ];
//   List b=[
//     "Stream on your phone, tablet,laptop, and TV without paying more",
//     "Save your data,watch Offline on a plane,train,or submarine",
//     "Join today, cancel anytime"
//   ];
//   late int _position=0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//
//       body: SafeArea(
//         child: Container(
//           height: double.infinity,
//           width: double.infinity,
//           decoration: BoxDecoration(
//               image: DecorationImage(
//                   image: AssetImage("assets/rolex2.jpeg"),
//                   fit: BoxFit.fill)),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               SizedBox(height: 50,),
//               Padding(
//                 padding:  EdgeInsets.only(top: 10,left: 10),
//                 child: Container(
//                   height: 100,
//                   width: 300,
//                   decoration: BoxDecoration(
//                       image: DecorationImage(
//                           image: AssetImage("assets/R.png"),
//                           fit:BoxFit.fill)),
//                 ),
//               ),
//               SizedBox(height: 200,),
//               Center(
//                 child: Container(
//
//                   height: 400,
//                   width: 400,
//                   // decoration: BoxDecoration(border: Border.all()),
//                   child: Stack(
//                     children: [
//                       Column(
//                         children: [
//
//                           CarouselSlider.builder(
//
//                               options: CarouselOptions(
//
//                                   height: 350,
//                                   aspectRatio: 8/9,
//                                   viewportFraction: 1,
//                                   initialPage: 0,
//                                   enableInfiniteScroll: true,
//                                   reverse: false,
//                                   autoPlay: false,
//                                   autoPlayInterval: const Duration(seconds: 2),
//                                   autoPlayAnimationDuration: const Duration(milliseconds: 800),
//                                   autoPlayCurve: Curves.fastOutSlowIn,
//                                   enlargeCenterPage: true,
//                                   enlargeFactor: 0.3,
//                                   // onPageChanged: callbackFunction,
//                                   scrollDirection: Axis.horizontal,
//                                   onPageChanged: (abs,reason)
//                                   {
//                                     setState(() {
//                                       _position=abs;
//                                     });
//                                   }
//
//                               ),
//
//
//
//                               itemCount: a.length,
//                               itemBuilder: (BuildContext context, int index, int pageViewIndex)
//                               {
//                                 return
//
//                                   Center(
//                                     child: Container(
//
//                                       height: 304,
//                                       width: 450,
//                                       child: Column(
//
//                                         children: [
//                                           Padding(
//                                             padding:  EdgeInsets.all(8.0),
//                                             child: Text(a[index],style: TextStyle(fontSize: 30,color: Colors.orange),),
//                                           ),
//                                           SizedBox(height: 100,),
//                                           Padding(
//                                             padding:  EdgeInsets.all(8.0),
//                                             child: Text(b[index],style: TextStyle(color: Colors.tealAccent),),
//                                           ),
//
//                                         ],
//
//                                       ),
//                                     ),
//                                   );
//
//                               }
//
//
//                           ),
//
//
//                         ],
//                       ),
//                       Positioned(
//                           left: 160,
//                           bottom: 20,
//                           child: DotsIndicator(
//                             dotsCount: a.length,
//                             position:_position.toDouble(),
//                             decorator: DotsDecorator(
//                                 color: Colors.black,
//                                 activeColor: Colors.red,
//                                 shape: RoundedRectangleBorder(
//                                     borderRadius: BorderRadius.circular(20)
//                                 )
//                             ),
//                           ))
//                     ],
//
//                   ),
//
//
//
//
//                 ),
//               ),
//               SizedBox(height: 50,),
//               Container(
//                 height: 50,
//                 width: double.infinity,
//                 child: ElevatedButton(
//                     style:ElevatedButton.styleFrom(backgroundColor: Colors.green),
//                     onPressed: (){
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(builder: (context) =>  Login()),
//                       );
//                     },
//                     child: Text("GET STARTED",style: GoogleFonts.lobster(color: Colors.black),)),
//               )
//             ],
//           ),
//         ),
//       ),
//
//     );
//   }
// }
