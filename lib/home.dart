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
      appBar: AppBar(title: Text("Learn History"),),
      body: Container(
            width: 500,
            height: 900,
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Lottie.network(
                    "https://assets4.lottiefiles.com/packages/lf20_zsmmmni7.json",
                    animate: animated,fit: BoxFit.fill,repeat: false),
                ElevatedButton(onPressed: (){
                  setState(() {
                    animated=true;

                  });
                  Future.delayed(Duration(seconds: 3),(){moveToMenu();});
                  // Duration(seconds: 5);
                  // Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Menu()));
                }, child: Text("Enter")),
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
