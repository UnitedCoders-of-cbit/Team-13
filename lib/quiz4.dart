import 'package:flutter/material.dart';
import 'package:history/quiz5.dart';

class Quiz4 extends StatefulWidget {
  const Quiz4({Key? key}) : super(key: key);

  @override
  State<Quiz4> createState() => _QuizState();
}

class _QuizState extends State<Quiz4> {
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
              child: Center(child: Text("What is the force of attraction between the objects ?",style: TextStyle(fontSize:25 )),),
            ),
            SizedBox(height: 20,),
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
                  'Gravity',
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
                  'Velocity',
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
                  'Acceleration',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),SizedBox(height: 20,),
            Container(width: 250,height: 40,
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
                  'Magnetic Attraction',
                  style: TextStyle(fontSize: 24),
                ),
              ),
            ),Spacer(),
            ElevatedButton(onPressed: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>Quiz5()));
            },
                child: Text("Next Question"))
          ],
        ),
      ),
    );
  }
}
