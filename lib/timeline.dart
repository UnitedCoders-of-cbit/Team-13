import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:history/customWidget.dart';
import 'package:history/quiz.dart';
import 'package:history/ttt.dart';
import 'package:history/view/screens/splash_screen.dart';
import 'package:timelines/timelines.dart';
//import 'package:timeline_tile/timeline_tile.dart';
//import 'package:timeline_tile/timeline_tile.dart';

class timeline extends StatefulWidget {
  timeline( {Key? key, required this.image,
    required this.data,required this.dataYears,
    required this.content,required this.ImageData}) : super(key: key);
  final String image;
  // final String color;
  final List<String> dataYears;
  final List<String> data;
  final List<String> content;
  final List<String> ImageData;
  @override
  State<timeline> createState() => _timelineState(image: image,
    data: data,dataYears: dataYears,
      content: content,ImageData: ImageData);
}

class _timelineState extends State<timeline> {
  late String image;
  // late String color;
  _timelineState({required this.image,required this.data,required this.dataYears,required this.content,required this.ImageData});
   List<String> dataYears;
   List<String> data;
   List<String> content;
   List<String> ImageData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Time Line"),backgroundColor: Colors.pinkAccent,),
      body: Container(

        decoration: BoxDecoration(
          image: DecorationImage(
            image:AssetImage("$image",),fit: BoxFit.fill
          )
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              FixedTimeline.tileBuilder(
                builder: TimelineTileBuilder.connectedFromStyle(
                  contentsAlign: ContentsAlign.alternating,
                  oppositeContentsBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(45),
                    child: Text('${dataYears[index]}',style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.w600),),
                  ),
                  contentsBuilder: (context, index) =>
                      GestureDetector(
                        onTap: (){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (context)=>
                                  cust_wid(
                                      image: ImageData[index],
                                      text: content[index],
                                    title: data[index],
                                  )
                              )
                          );
                        },
                        child: Card(
                          color: Colors.pinkAccent,
                          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                            padding: const EdgeInsets.all(8.0),
                             child: Text('${data[index]}',style: TextStyle(
                                 fontSize: 20,color: Colors.white,fontWeight: FontWeight.w600),),
                    ),
                     ),
                      ),
                  connectorStyleBuilder: (context, index) =>
                  ConnectorStyle.solidLine,
                  indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
                  itemCount: data.length,
                ),
              ),
              ElevatedButton(
                // style: ElevatedButton.styleFrom(maximumSize: Size(5, 5)),
                  onPressed: () async {
                    await Future.delayed(Duration(seconds: 5),(){Navigator.of(context).push(MaterialPageRoute(builder: (context)=> Quiz()));});

              }, child: Text("Quiz Time"))
            ],
          ),
        ),
      ),
      // Container(
      //   child: ListView.builder(
      //     itemCount: 10,
      //     itemBuilder: ((context, index) {
      //       return Container(
      //         child: Row(
      //           children: [
      //             Column(
      //               children: [
      //                 Container(
      //                   width: 2,
      //                   height: 50,
      //                   color: Colors.black,
      //                 ),
      //                 Container(
      //                   child: Text("Hii"),
      //                 ),
      //               ],
      //             )
      //           ],
      //         ),
      //       );
      //     }),
      //   ),
      // ),
    );
  }
}