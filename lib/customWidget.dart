import 'package:flutter/material.dart';

class cust_wid extends StatefulWidget {
  cust_wid({Key? key, required this.image, required this.text,required this.title});
  final String image;
  final String text;
  final String title;
  @override
  State<cust_wid> createState() => _cust_widState(image: image, text: text,title:title);
}

class _cust_widState extends State<cust_wid> {
  late String image;
  late String text;
  late String title;
  _cust_widState({required this.image, required this.text,required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xE5DADAFF),
        appBar: AppBar(title: Text(title),backgroundColor: Colors.black87,),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: Container(
                  width: 350,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: DecorationImage(
                      
                      image: AssetImage(image),
                      fit: BoxFit.fill
                    )
                  ),
                  // child: Image.asset(
                  //   image,
                  //   width: 380,
                  //   height: 250,
                  // ),
                ),
              ),
              Text(title,textAlign: TextAlign.start,style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600),),
              Divider(thickness: 1,color: Colors.black,endIndent: 140,),
              Padding(
                padding: const EdgeInsets.only(left: 25, right: 25),
                  child: Text(
                    text,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.w500,wordSpacing: 5,color: Colors.black87),
                  ),

              ),
              SizedBox(height: 15,),
              Text("Happy Learning !!!",style: TextStyle(fontSize: 35),)
            ],
          ),
        ));
  }
}