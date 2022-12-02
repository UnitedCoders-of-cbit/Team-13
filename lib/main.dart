import 'package:flutter/material.dart';
import 'century_20.dart';
import 'timeline.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: timeline(),
    );
  }
}

class century_page extends StatefulWidget {
  const century_page({super.key});

  @override
  State<century_page> createState() => _century_pageState();
}

class _century_pageState extends State<century_page> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text("Pick a Century"),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(8),
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => timeline()));
                    },
                    child: Card(
                      //margin: EdgeInsets.all(5),
                      elevation: 20,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Container(
                        height: MediaQuery.of(context).size.width / 2.2,
                        width: MediaQuery.of(context).size.width / 2.2,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage("assets/space.webp"),
                              fit: BoxFit.fill,
                              alignment: Alignment.topCenter,
                            ),
                            borderRadius: BorderRadius.circular(40)),
                        child: Center(
                          child: Text(
                            "1900-1999",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 30,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    //margin: EdgeInsets.all(5),
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.width / 2.2,
                      width: MediaQuery.of(context).size.width / 2.2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/space.webp"),
                            fit: BoxFit.fill,
                            alignment: Alignment.topCenter,
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Text(
                          "1900-1999",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.width / 2.2,
                      width: MediaQuery.of(context).size.width / 2.2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/space.webp"),
                            fit: BoxFit.fill,
                            alignment: Alignment.topCenter,
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Text(
                          "1900-1999",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.width / 2.2,
                      width: MediaQuery.of(context).size.width / 2.2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/space.webp"),
                            fit: BoxFit.fill,
                            alignment: Alignment.topCenter,
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Text(
                          "1900-1999",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.width / 2.2,
                      width: MediaQuery.of(context).size.width / 2.2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/space.webp"),
                            fit: BoxFit.fill,
                            alignment: Alignment.topCenter,
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Text(
                          "1900-1999",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.width / 2.2,
                      width: MediaQuery.of(context).size.width / 2.2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/space.webp"),
                            fit: BoxFit.fill,
                            alignment: Alignment.topCenter,
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Text(
                          "1900-1999",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.width / 2.2,
                      width: MediaQuery.of(context).size.width / 2.2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/space.webp"),
                            fit: BoxFit.fill,
                            alignment: Alignment.topCenter,
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Text(
                          "1900-1999",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.width / 2.2,
                      width: MediaQuery.of(context).size.width / 2.2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/space.webp"),
                            fit: BoxFit.fill,
                            alignment: Alignment.topCenter,
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Text(
                          "1900-1999",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.width / 2.2,
                      width: MediaQuery.of(context).size.width / 2.2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/space.webp"),
                            fit: BoxFit.fill,
                            alignment: Alignment.topCenter,
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Text(
                          "1900-1999",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Card(
                    elevation: 20,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Container(
                      height: MediaQuery.of(context).size.width / 2.2,
                      width: MediaQuery.of(context).size.width / 2.2,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("assets/space.webp"),
                            fit: BoxFit.fill,
                            alignment: Alignment.topCenter,
                          ),
                          borderRadius: BorderRadius.circular(40)),
                      child: Center(
                        child: Text(
                          "1900-1999",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
