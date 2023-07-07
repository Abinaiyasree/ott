import 'package:flutter/material.dart';
import 'package:flick_video_player/flick_video_player.dart';
import 'package:video_player/video_player.dart';
class SamplePlayer extends StatefulWidget {
  SamplePlayer() : super();
  @override
  _SamplePlayerState createState() => _SamplePlayerState();
}
class _SamplePlayerState extends State<SamplePlayer> {
List a=[
 "1",
  "2",
  "3",
  "4",
  "5",
  "6",
  "7",
  "8",
  "9",
  "10",
  "11",
  ];
List b=[
  "assets/image1.jpg",
  "assets/image2.jpg",
  "assets/image 3.jpg",
  "assets/image4.jpg",
  "assets/theri.jpeg",
  "assets/wed.jpg",
  ];

  late FlickManager flickManager;
  @override
  void initState() {
    super.initState();
    flickManager = FlickManager(
      videoPlayerController:
      VideoPlayerController.network('https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'),
    );
  }
  @override
  void dispose() {
    flickManager.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 100,),
              Container(
                height: 300,
                width: double.infinity,
                child: FlickVideoPlayer(
                    flickManager: flickManager
                ),
              ),
              SizedBox(height: 20,),
              Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text("The promise(Tamil dubbed)",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding:EdgeInsets.only(left: 10),
                child: Row(
                  children: [
                    Text("s1,e1,21 May 2018 ",style: TextStyle(fontSize: 10),),
                    Text("U/A 13+",style: TextStyle(backgroundColor: Colors.grey,fontSize: 10),),
                      ],
                ),
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Container(
                    height: 80,
                    width: 80,
                    child: Column(
                      children: [
                        Icon(Icons.add),
                        SizedBox(height: 5,),
                        Text("MyList")
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 80,
                    width: 80,
                    child: Column(
                      children: [
                        Icon(Icons.download),
                        SizedBox(height: 5,),
                        Text("Download")
                      ],
                    ),
                  ),
                  SizedBox(height: 10,),
                  Container(
                    height: 80,
                    width: 80,
                    child: Column(
                      children: [
                        Icon(Icons.share),
                        SizedBox(height: 5,),
                        Text("Share")
                      ],
                    ),
                  ),




           ],

    ),
              Container(
                height: 130,
                child: ListView.builder(
                    scrollDirection:Axis.horizontal,
                    itemCount: a.length,
                    itemBuilder: (BuildContext context,int index)

                    {
                      return Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Card(
                              elevation: 20,
                              child: Container(
                                height: 100,
                                width: 80,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    color: Colors.tealAccent,
                                    shape: BoxShape.rectangle
                                ),
                                child:  ElevatedButton(style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder()
                                ),
                                    onPressed: (){}, child: Text(a[index])),
                              ),
                            ),
                          ),
                          // Expanded(child: Text(b[index])),
                        ],
                      );
                    }
                ),
              ),
              Padding(
                padding:  EdgeInsets.only(left: 8),
                child: Text("Commands(200)",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Text("Similar shows"),
              ),
              Padding(
                padding: EdgeInsets.only(left: 8),
                child: Container(
                  height: 500,
                  width: 400,
                  child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                          maxCrossAxisExtent: 200,
                          childAspectRatio: 3 / 2,
                          crossAxisSpacing: 20,
                          mainAxisSpacing: 20),
                      itemCount: b.length,
                      itemBuilder: (BuildContext ctx, index) {
                        return Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(15),
                            image: DecorationImage(image: AssetImage(b[index]),fit: BoxFit.fill)
                          ),

                        );
                      }),
                ),
              )

          ]
    ),
        ),
      ),
    );
  }
}