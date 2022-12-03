import 'package:flutter/material.dart';
import 'package:history/menu.dart';
import 'package:lottie/lottie.dart';
class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool animated = false;


   moveToMenu() async {
     Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Menu()));
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle:true,title: Text("Learn History",textAlign:TextAlign.center,),backgroundColor: Colors.indigo,),
      body: Container(
            width: 500,
            height: 900,
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/splash2.jpeg"),
                ElevatedButton(style:ElevatedButton.styleFrom(backgroundColor: Colors.indigo),onPressed: (){
                  setState(() {
                    animated=true;

                  });
                  Future.delayed(Duration(seconds: 0),(){moveToMenu();});
                  // Duration(seconds: 5);
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Menu()));
                }, child: Text("Let's Get Back To History!")),
              ],
            ),
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/timemachine.gif"),
        //     fit: BoxFit.fill
        //   )
        // ),
      ),
    );
  }
}
