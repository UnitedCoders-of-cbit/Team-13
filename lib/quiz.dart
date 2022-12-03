import 'package:flutter/material.dart';
import 'package:history/quiz2.dart';

class Quiz extends StatefulWidget {
  const Quiz({Key? key}) : super(key: key);

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Quiz"),),
      body:  Container(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15),
              color: Colors.white,
              width: 400,
              height: 100,
              child: Center(
                child: Text("When did world war 1 occured?",
                style: TextStyle(fontSize:25 ),),
              ),
            ),
            SizedBox(height: 20,),
            Container(width: 220,height: 40,
              child: ElevatedButton(

                onPressed: () {},
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.redAccent; //<-- SEE HERE
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                child: const Text(
                  'August ,28,1947',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),SizedBox(height: 20,),
            Container(width: 200,height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.redAccent; //<-- SEE HERE
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                child: const Text(
                  'July ,28,1952',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),SizedBox(height: 20,),
            Container(width: 200,height: 40,
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.green; //<-- SEE HERE
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                child: const Text(
                  'July ,28,1914',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),SizedBox(height: 20,),
            Container(width: 200,height: 40,
              child: ElevatedButton(
                onPressed: () { },
                style: ButtonStyle(

                  overlayColor: MaterialStateProperty.resolveWith<Color?>(
                        (Set<MaterialState> states) {
                      if (states.contains(MaterialState.pressed))
                        return Colors.redAccent; //<-- SEE HERE
                      return null; // Defer to the widget's default.
                    },
                  ),
                ),
                child: const Text(
                  'July ,30 1914',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(200,40),
              ),
                onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Quiz2()));
            },
                child: Text("Next Question"))
          ],
        ),
      ),
    );
  }
}
