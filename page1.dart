import 'package:flutter/material.dart';

import 'bottom navi.dart';
import 'home.dart';

class page1 extends StatefulWidget {
  const page1({Key? key}) : super(key: key);

  @override
  State<page1> createState() => _page1State();
}

class _page1State extends State<page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue.shade100,
      appBar: AppBar(
        backgroundColor: Colors.blue.shade400,
        leading: Icon(Icons.arrow_back),
        title: Text("My Account",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,
        fontSize: 15),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(Icons.notifications_rounded),
          ),
        ],



      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: GestureDetector(onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const  navi()),
                );
              },
                child: Container(
                  height: 50,
                  width: 350,
                  decoration: BoxDecoration(
                    border: Border.all(),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                        Icon(Icons.login),
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Text("Login",style:TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold),),
                       ),],),


                    ],
                  ),

                ),
              ),
            ),
            Container(
              height: 121,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all()

              ),

              child: Column(

                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Icon(Icons.add),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Icon(Icons.download),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Icon(Icons.watch ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(11.0),
                        child: Icon(Icons.tv),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("playlist"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("download"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("watch"),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("network"),
                      ),


                    ],
                  ),
                  SizedBox(height: 10,),




                ],
              ),



            ),
            SizedBox(height: 10,),
            Container(
              height: 50,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(5),

              ),
              child: Row(
                children: [
                  Container(
                    height: 20,
                    width: 20,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage("assets/wapp.jpeg"),
                        fit: BoxFit.fill
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("whatsapp status saver"),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 80),
                    child: Container(
                      height: 20,
                      width: 20,
                      decoration: BoxDecoration(
                        color: Colors.red.shade600,
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Text("33",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.arrow_forward_ios),
                  ),
                 ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage("assets/wed.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 250,
              width: 350,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.play_circle_outline_outlined),
                        ),
                        Text("video defautl "),
                        Padding(
                          padding: const EdgeInsets.only(left: 140),
                          child: Icon(Icons.arrow_forward_ios),
                        )


                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.filter_tilt_shift_rounded),
                        ),
                        Text("app theme "),
                        Padding(
                          padding: const EdgeInsets.only(left: 150),
                          child: Icon(Icons.arrow_forward_ios),

                        ),


                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.settings),
                        ),
                        Text("setting "),
                        Padding(
                          padding: const EdgeInsets.only(left: 180),
                          child: Icon(Icons.arrow_forward_ios),
                        )


                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(Icons.dashboard_customize),
                        ),
                        Text("custom pip controls"),
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Icon(Icons.arrow_forward_ios),
                        )


                      ],
                    ),
                  ),



    ],
              ),
            ),
            SizedBox(height: 10),

            Container(
              height: 100,
              width: 350,
              decoration: BoxDecoration(
                border: Border.all(),
                borderRadius: BorderRadius.circular(10),

              ),
              child: Column(
                children: [
                  Row(
                     children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: Icon(Icons.wallet),
                       ),
                       Text("lega"),
                       Padding(
                         padding: const EdgeInsets.only(left: 200),
                         child: Icon(Icons.arrow_forward_ios),
                       ),
                     ],

                  ),
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.help_outline),
                    ),
                    Text("help"),
                    Padding(
                      padding: const EdgeInsets.only(left: 200),
                      child: Icon(Icons.arrow_forward_ios),
                    ),
                  ],
                    
                  ),
                ],
              ),
            ),

              ],
            ),
      ),



    );
  }
}

