import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:timelines/timelines.dart';
//import 'package:timeline_tile/timeline_tile.dart';
//import 'package:timeline_tile/timeline_tile.dart';

class timeline extends StatefulWidget {
  const timeline({super.key});

  @override
  State<timeline> createState() => _timelineState();
}

class _timelineState extends State<timeline> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Time Line")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FixedTimeline.tileBuilder(
              builder: TimelineTileBuilder.connectedFromStyle(
                contentsAlign: ContentsAlign.alternating,
                oppositeContentsBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(50),
                  child: Text('year'),
                ),
                contentsBuilder: (context, index) => Card(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Contents'),
                  ),
                ),
                connectorStyleBuilder: (context, index) =>
                    ConnectorStyle.solidLine,
                indicatorStyleBuilder: (context, index) => IndicatorStyle.dot,
                itemCount: 20,
              ),
            )
          ],
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
